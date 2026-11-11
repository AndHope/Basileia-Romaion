#!/usr/bin/env python3
"""
Convert Victoria 3 journal entries from the pre-1.15 format
(complete/on_complete, fail/on_fail, invalid/on_invalid, timeout/on_timeout)
to the 1.15 `outcome = { ... }` format.

Usage:
    python convert_je.py file1.txt file2.txt ...  [--outdir converted] [--loc-prefix br]

Writes converted copies into --outdir (originals are never touched) and one
combined localization file with placeholder keys for every new `conclusion_desc`.
Anything it is unsure about is printed as a WARNING at the end.
"""
import argparse
import re
import sys
from pathlib import Path

ENTRY_RE = re.compile(r'^([A-Za-z0-9_.]+)\s*=\s*\{\s*(#.*)?$')
BLOCK_RE = re.compile(r'^\s*(complete|on_complete|fail|on_fail|invalid|on_invalid|on_timeout)\s*=\s*\{\s*(#.*)?$')
LOOSE_RE = re.compile(r'^\s*(complete|on_complete|fail|on_fail|invalid|on_invalid|on_timeout)\s*=')
TIMEOUT_RE = re.compile(r'^\s*timeout\s*=')


def delta(line):
    """Brace delta of a line, ignoring anything after a # comment."""
    i = line.find('#')
    s = line if i < 0 else line[:i]
    return s.count('{') - s.count('}')


def reindent(lines):
    """Indent moved lines one level deeper; normalise leading 4-space runs to tabs."""
    out = []
    for ln in lines:
        ln = re.sub(r'^( {4})+', lambda m: '\t' * (len(m.group(0)) // 4), ln)
        out.append(('\t' + ln) if ln.strip() else ln)
    return out


def build_outcome(kind, key, trigger, effect, loc, invalid_key):
    L = ['\toutcome = {']
    if kind == 'complete':
        desc = f'{key}_completed_desc'
        loc[desc] = 'This reform has been completed.'
        L += ['\t\theader = je_standard_completion_header',
              '\t\teffect_header = je_standard_on_completion_header',
              f'\t\tconclusion_desc = {desc}',
              '\t\tcolor = "gold_positive"']
    elif kind == 'fail':
        desc = f'{key}_failed_desc'
        loc[desc] = 'This reform has failed.'
        L += ['\t\theader = je_standard_failure_header',
              '\t\teffect_header = je_standard_on_failure_header',
              f'\t\tconclusion_desc = {desc}',
              '\t\tcolor = "blue_negative"']
    elif kind == 'timeout':
        desc = f'{key}_timeout_desc'
        loc[desc] = 'Time ran out before this reform could be completed.'
        L += ['\t\theader = je_standard_failure_header',
              '\t\teffect_header = je_standard_on_failure_header',
              f'\t\tconclusion_desc = {desc}',
              '\t\tcolor = "blue_negative"',
              '\t\tflags = { timeout }']
    elif kind == 'invalid':
        loc[invalid_key] = 'This journal entry is no longer relevant.'
        L += [f'\t\tconclusion_desc = {invalid_key}',
              '\t\tflags = { hidden invalid_outcome }']
    if kind != 'timeout':
        L.append('\t\ttrigger = {')
        L += reindent(trigger or [])
        L.append('\t\t}')
    if effect is not None:
        L.append('\t\teffect = {')
        L += reindent(effect)
        L.append('\t\t}')
    L.append('\t}')
    return L


def convert_entry(body, key, loc, warns, invalid_key):
    n = len(body)
    new, removed, insert_at, has_timeout = [body[0]], {}, None, False
    d, k = 1, 1
    while k < n - 1:
        line = body[k]
        if d == 1:
            m = BLOCK_RE.match(line)
            if m:
                name = m.group(1)
                dd, e = 0, k
                while e < n:
                    dd += delta(body[e])
                    if dd == 0:
                        break
                    e += 1
                if name in removed:
                    warns.append(f'{key}: duplicate `{name}` block - kept the last one')
                removed[name] = body[k + 1:e]
                if insert_at is None:
                    insert_at = len(new)
                k = e + 1
                continue
            if LOOSE_RE.match(line):
                warns.append(f'{key}: NOT converted (not a plain multi-line block): {line.strip()}')
            if TIMEOUT_RE.match(line):
                has_timeout = True
        new.append(line)
        d += delta(line)
        k += 1
    new.append(body[-1])
    if not removed:
        return body, []

    outs, made = [], []

    def add(kind, trig, eff):
        outs.append(build_outcome(kind, key, trig, eff, loc, invalid_key))
        made.append(kind)

    if 'complete' in removed or 'on_complete' in removed:
        if 'complete' not in removed:
            warns.append(f'{key}: on_complete without complete - outcome has an EMPTY trigger')
        add('complete', removed.get('complete'), removed.get('on_complete'))
    if 'fail' in removed or 'on_fail' in removed:
        if 'fail' not in removed:
            warns.append(f'{key}: on_fail without fail - outcome has an EMPTY trigger')
        add('fail', removed.get('fail'), removed.get('on_fail'))
    if 'on_timeout' in removed or has_timeout:
        if not has_timeout:
            warns.append(f'{key}: on_timeout but no `timeout = N` value - check this one')
        add('timeout', None, removed.get('on_timeout'))
    if 'invalid' in removed or 'on_invalid' in removed:
        if 'invalid' not in removed:
            warns.append(f'{key}: on_invalid without invalid - outcome has an EMPTY trigger')
        add('invalid', removed.get('invalid'), removed.get('on_invalid'))

    block = []
    for i, o in enumerate(outs):
        if i:
            block.append('')
        block += o
    new[insert_at:insert_at] = block
    return new, made


def convert_text(text, loc, warns, invalid_key, stats):
    lines = text.split('\n')
    out, i, n = [], 0, len(lines)
    while i < n:
        line = lines[i]
        m = ENTRY_RE.match(line)
        if m:
            d, j = 0, i
            while j < n:
                d += delta(lines[j])
                if d == 0:
                    break
                j += 1
            body = lines[i:j + 1]
            new, made = convert_entry(body, m.group(1), loc, warns, invalid_key)
            if made:
                stats.append((m.group(1), made))
            out += new
            i = j + 1
        else:
            out.append(line)
            i += 1
    return '\n'.join(out)


def check(text, label, warns, look_for_old=True):
    d = 0
    for no, ln in enumerate(text.split('\n'), 1):
        if look_for_old and d == 1 and LOOSE_RE.match(ln):
            warns.append(f'{label}: old-style block still present at line {no}: {ln.strip()}')
        d += delta(ln)
        if d < 0:
            warns.append(f'{label}: brace underflow at line {no}')
            return
    if d != 0:
        warns.append(f'{label}: unbalanced braces (net {d})')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('files', nargs='+')
    ap.add_argument('--outdir', default='converted')
    ap.add_argument('--loc-prefix', default='br')
    a = ap.parse_args()

    invalid_key = f'{a.loc_prefix}_je_invalid_desc'
    outdir = Path(a.outdir)
    outdir.mkdir(parents=True, exist_ok=True)
    loc, warns = {}, []

    for f in a.files:
        p = Path(f)
        raw = p.read_bytes()
        bom = raw.startswith(b'\xef\xbb\xbf')
        try:
            text, enc = raw.decode('utf-8-sig'), 'utf-8'
        except UnicodeDecodeError:
            text, enc = raw.decode('cp1252'), 'cp1252'
            warns.append(f'{p.name}: not UTF-8, read as cp1252')
        crlf = '\r\n' in text
        text = text.replace('\r\n', '\n')

        check(text, f'{p.name} (input)', warns, look_for_old=False)
        stats = []
        new = convert_text(text, loc, warns, invalid_key, stats)
        check(new, f'{p.name} (output)', warns)

        if crlf:
            new = new.replace('\n', '\r\n')
        data = new.encode(enc)
        if bom:
            data = b'\xef\xbb\xbf' + data
        (outdir / p.name).write_bytes(data)

        total = sum(len(m) for _, m in stats)
        print(f'{p.name}: {len(stats)} entries converted, {total} outcomes created')
        for key, made in stats:
            print(f'    {key}: {", ".join(made)}')

    if loc:
        lp = outdir / f'{a.loc_prefix}_je_outcomes_l_english.yml'
        body = ['l_english:'] + [f' {k}:0 "{v}"' for k, v in sorted(loc.items())]
        lp.write_bytes(b'\xef\xbb\xbf' + ('\n'.join(body) + '\n').encode('utf-8'))
        print(f'\nLocalization: {lp} ({len(loc)} keys)')

    if warns:
        print('\nWARNINGS:')
        for w in warns:
            print('  -', w)
    else:
        print('\nNo warnings.')


if __name__ == '__main__':
    sys.exit(main())
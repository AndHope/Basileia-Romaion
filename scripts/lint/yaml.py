from argparse import ArgumentParser, Namespace
from pathlib import Path
from subprocess import run
from sys import exit


def _args() -> Namespace:
    parser = ArgumentParser()
    parser.add_argument(
        "--directory", required=True, type=Path, help="Directory to check"
    )
    parser.add_argument(
        "--paths-to-ignore", type=Path, nargs="*", help="Paths to ignore"
    )
    return parser.parse_args()


def _main() -> None:
    args = _args()
    all_files = list(args.directory.rglob("*.yaml")) + list(
        args.directory.rglob("*.yml")
    )

    paths_to_lint = []

    if args.paths_to_ignore is None:
        paths_to_lint = all_files
    else:
        for path in all_files:
            if path not in args.paths_to_ignore:
                paths_to_lint.append(path)

    config_file = (Path(__file__).parent / ".yamllint.yml").relative_to(Path.cwd())

    for file in paths_to_lint:
        print(f"Linting {file}", flush=True)
        command = [
            "yamllint",
            file,
            "--strict",
            "--config-file",
            config_file,
        ]
        result = run(command, text=True)
        if result.returncode != 0:
            print(
                "Linting errors found, see the error above for more details", flush=True
            )
            print(
                f"To run this test locally, run the following command:\n{' '.join(map(str, command))}",
                flush=True,
            )
            exit(result.returncode)

    print("YAML linting complete", flush=True)


if __name__ == "__main__":
    _main()

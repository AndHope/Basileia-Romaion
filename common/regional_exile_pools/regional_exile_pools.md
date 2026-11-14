regional_exile_pool_key = {
	has_access = { <country trigger> }	# Countries fulfilling this trigger can access this Regional Exile Pool
}

- Characters exiled to a Regional Exile Pool are only visible to, and can only be invited by, countries that fulfill the pool's has_access trigger.
- has_access is required; a pool without one can never be accessed. It is evaluated in the Country scope.
- If no country can access a pool anymore, its exiles are moved to the global exile pool and lose their return date. This is checked quarterly.
- Exile characters to a pool with the effect: exile_character = { exile_pool = <pool key> months/years = <int> } (duration is optional; the character automatically returns to their home country when it expires).
- Localization: add a key matching the pool key (e.g. siberian_exile_pool) for the tab name in the Invite Exile UI.

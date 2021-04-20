return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`betteroptions2` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("betteroptions2", {
			mod_script       = "scripts/mods/betteroptions2/betteroptions2",
			mod_data         = "scripts/mods/betteroptions2/betteroptions2_data",
			mod_localization = "scripts/mods/betteroptions2/betteroptions2_localization",
		})
	end,
	packages = {
		"resource_packages/betteroptions2/betteroptions2",
	},
}

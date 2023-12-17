local act = require("wezterm").action

local key_setup = {}

key_setup.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

key_setup.keys = {
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "o",
		mods = "LEADER|CTRL",
		action = act.ActivateLastTab,
	},
	{ key = "[", mods = "LEADER", action = act.ActivateCopyMode },
	{
		key = ":",
		mods = "LEADER",
		action = act.ActivateCommandPalette,
	},
	{
		key = "K",
		mods = "LEADER|SHIFT",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "t",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{ key = "n", mods = "LEADER", action = act.SpawnWindow },
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
}

return key_setup

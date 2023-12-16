-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dark+"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })

config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "o",
		mods = "LEADER|CTRL",
		action = wezterm.action.ActivateLastTab,
	},
	{ key = "[", mods = "LEADER", action = wezterm.action.ActivateCopyMode },
	{
		key = ":",
		mods = "LEADER",
		action = wezterm.action.ActivateCommandPalette,
	},
	{
		key = "K",
		mods = "LEADER|SHIFT",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "t",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{ key = "n", mods = "LEADER", action = wezterm.action.SpawnWindow },
	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
}
-- and finally, return the configuration to wezterm
return config

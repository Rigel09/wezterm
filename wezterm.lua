-- Pull in the wezterm API
local wezterm = require("wezterm")
local my_key_setup = require("config.keymaps")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Setup color scheme
config.color_scheme = "Dark+"

-- Setup my font
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })
config.font_size = 9

config.leader = my_key_setup.leader
config.keys = my_key_setup.keys

-- setup the visual bell
config.visual_bell = { fade_in_duration_ms = 150, fade_out_duration_ms = 150 }
config.colors = { visual_bell = "#1d05f2" }
return config

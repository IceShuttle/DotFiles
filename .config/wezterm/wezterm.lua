
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.default_prog = { '/usr/bin/fish', '-l' }
config.font = wezterm.font 'JetBrains Mono'
config.default_cursor_style = "BlinkingUnderline"
-- For example, changing the color scheme:
config.color_scheme = 'Adventure'
config.front_end="OpenGL"


-- and finally, return the configuration to wezterm
return config

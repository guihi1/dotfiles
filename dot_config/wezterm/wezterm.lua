-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dark Pastel'
config.window_background_opacity = 0.7
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 16
-- config.hide_tab_bar_if_only_one_tab = true
config.keys = {
  {
  key = "LeftArrow",
  mods = "CTRL|SHIFT",
  action = wezterm.action.ActivateTabRelative(-1),
  },
  {
  key = "RightArrow",
  mods = "CTRL|SHIFT",
  action = wezterm.action.ActivateTabRelative(1),
  },
  {
  key = "q",
  mods = "CTRL|SHIFT",
  action = wezterm.action.CloseCurrentTab{confirm=true},
  },
}
config.window_padding = {
  left = '0.5cell',
  right = '0.5cell',
  top = '0',
  bottom = '0',
}

config.default_prog = { "/bin/zsh" }

-- and finally, return the configuration to wezterm
return config

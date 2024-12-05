-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('JetBrainsMono Nerd Font Mono', { weight='Regular' })
config.font_size = 14

--config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = {
  font_size = 14.0,
  border_left_width = '1px',
  border_right_width = '1px',
  border_bottom_height = '1px',
  border_top_height = '1px',
  border_left_color = '#45475a',
  border_right_color = '#45475a',
  border_bottom_color = '#45475a',
  border_top_color = '#45475a',
}
config.window_padding = {
  left = '2cell',
  right = '2cell',
  top = '1cell',
  bottom = '1cell'
}

config.animation_fps = 30
config.default_cursor_style = 'BlinkingBar'

-- and finally, return the configuration to wezterm
return config

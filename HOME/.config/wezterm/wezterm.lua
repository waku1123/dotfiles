local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.default_cursor_style = "BlinkingBlock"
config.enable_scroll_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
-- Color Theme
-- NOTE: see all themes at https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = 'Hybrid'
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.0,
  brightness = 1.5
}
-- Background Opacity
config.window_background_opacity = 0.96
-- Font
config.font = wezterm.font("Hack Nerd Font")
-- Font Size
config.font_size = 13.0
config.adjust_window_size_when_changing_font_size = true

-- Enable IME
config.use_ime = true

-- Keybindings
config.disable_default_key_bindings = true
-- load keybinds.lua
local keybind = require 'keybinds'
-- keybinds configuration
config.keys = keybind.keys
config.key_tables = keybind.key_tables

return config

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_background_image = 'C:\\Users\\Patrik\\Documents\\bkground2.jpeg'
config.use_fancy_tab_bar = true
config.window_decorations = 'RESIZE'
config.default_prog = { 'pwsh' }
config.font = wezterm.font('Consolas NF')
config.font_size = 13 
config.line_height = 1.1

act = wezterm.action
config.keys = {
  {
    key = "_",
    mods = "SHIFT|ALT",
    action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "+",
    mods = "SHIFT|ALT",
    action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "UpArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection 'Up'
  },
  {
    key = "DownArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection 'Down'
  },
  {
    key = "LeftArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection 'Left'
  },
  {
    key = "RightArrow",
    mods = "ALT",
    action = act.ActivatePaneDirection 'Right'
  },
  {
    key = "UpArrow",
    mods = "SHIFT|ALT",
    action = act.AdjustPaneSize { 'Up', 5 },
  },
  {
    key = "DownArrow",
    mods = "SHIFT|ALT",
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = "LeftArrow",
    mods = "SHIFT|ALT",
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = "RightArrow",
    mods = "SHIFT|ALT",
    action = act.AdjustPaneSize { 'Right', 5 },
  }
}

return config


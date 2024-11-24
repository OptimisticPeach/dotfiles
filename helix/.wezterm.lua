local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_background_image = 'C:\\Users\\Optim\\Documents\\bkground.png'
config.use_fancy_tab_bar = true
config.window_decorations = 'RESIZE'
config.default_prog = { 'pwsh', '-c', 'nu' }
config.font = wezterm.font('Consolas')
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
    key = 'UpArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
  },  
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
  },  
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
  },  
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.DisableDefaultAssignment,
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
  },
  {
    key = "w",
    mods = "ALT",
    action = act.ActivateWindowRelative(1),
  },
  {
    key = "w",
    mods = "SHIFT|ALT",
    action = act.ActivateWindowRelative(-1),
  },
  {
    key = "w",
    mods = "CTRL|SHIFT|ALT",
    action = wezterm.action.SpawnWindow,
  },
  {
    key = "w",
    mods = "CTRL|ALT",
    action = act.PaneSelect {
      mode = 'SwapWithActive'
    }
  }
}

return config


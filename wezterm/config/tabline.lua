local wezterm = require('wezterm')
local colors = require('colors.custom')
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")

-- Bar plugin options (not part of the final WezTerm config schema)
local bar_config = {
  position = "bottom",
  max_width = 55,  -- Changed from 32 to 55
  padding = {
    left = 1,
    right = 1,
  },
  separator = {
    space = 1,
    left_icon = wezterm.nerdfonts.fa_long_arrow_right,
    right_icon = wezterm.nerdfonts.fa_long_arrow_left,
    field_icon = wezterm.nerdfonts.indent_line,
  },
  modules = {
    tabs = {
      active_tab_fg = 4,
      inactive_tab_fg = 6,
    },
    workspace = {
      enabled = true,
      icon = wezterm.nerdfonts.cod_window,
      color = 8,
    },
    leader = {
      enabled = true,
      icon = wezterm.nerdfonts.oct_rocket,
      color = 2,
    },
    pane = {
      enabled = true,
      icon = wezterm.nerdfonts.cod_multiple_windows,
      color = 7,
    },
    username = {
      enabled = true,
      icon = wezterm.nerdfonts.fa_user,
      color = 6,
    },
    hostname = {
      enabled = true,
      icon = wezterm.nerdfonts.cod_server,
      color = 8,
    },
    clock = {
      enabled = true,
      icon = wezterm.nerdfonts.md_calendar_clock,
      color = 5,
    },
    cwd = {
      enabled = true,
      icon = wezterm.nerdfonts.oct_file_directory,
      color = 7,
    },
  },
}

-- Let the plugin apply its settings.
-- bar.apply_to_config returns a sanitized table of settings.
local config = bar.apply_to_config(bar_config) or {}

-- Append additional valid WezTerm config fields
-- (e.g. enabling the tab bar)
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_max_width = 30  -- Append valid field to override tab width


-- ...existing code or additional valid fields...

return config

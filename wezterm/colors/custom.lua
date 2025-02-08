-- Tokyo Night Storm variant
-- stylua: ignore
local tokyo_storm = {
   -- Base colors
   base       = '#24283b',  -- primary.background
   text       = '#a9b1d6',  -- primary.foreground
   -- Normal colors
   black      = '#32344a',  -- normal.black
   red        = '#f7768e',  -- normal.red
   green      = '#9ece6a',  -- normal.green
   yellow     = '#e0af68',  -- normal.yellow
   blue       = '#7aa2f7',  -- normal.blue
   magenta    = '#ad8ee6',  -- normal.magenta
   cyan       = '#449dab',  -- normal.cyan
   white      = '#9699a8',  -- normal.white
   -- Bright colors
   bright_black   = '#444b6a',  -- bright.black
   bright_red     = '#ff7a93',  -- bright.red
   bright_green   = '#b9f27c',  -- bright.green
   bright_yellow  = '#ff9e64',  -- bright.yellow
   bright_blue    = '#7da6ff',  -- bright.blue
   bright_magenta = '#bb9af7',  -- bright.magenta
   bright_cyan    = '#0db9d7',  -- bright.cyan
   bright_white   = '#acb0d0',  -- bright.white
   -- Additional theme colors (derived from context)
   surface2   = '#585b70',  -- selection.background
   surface0   = '#313244',  -- inactive_tab.bg_color
   subtext1   = '#bac2de',  -- inactive_tab.fg_color
   overlay0   = '#6c7086',  -- split color (approximation)
   mantle     = '#181825',  -- new_tab_hover.bg_color (approximation)
   crust      = '#11111b',  -- cursor.text
}

local colorscheme = {
   foreground = tokyo_storm.text,
   background = tokyo_storm.base,
   cursor_bg = tokyo_storm.text,         -- cursor.color
   cursor_fg = tokyo_storm.crust,        -- cursor.text
   selection_bg = tokyo_storm.surface2,
   selection_fg = tokyo_storm.text,
   ansi = {
       tokyo_storm.black,
       tokyo_storm.red,
       tokyo_storm.green,
       tokyo_storm.yellow,
       tokyo_storm.blue,
       tokyo_storm.magenta,
       tokyo_storm.cyan,
       tokyo_storm.white,
   },
   brights = {
       tokyo_storm.bright_black,
       tokyo_storm.bright_red,
       tokyo_storm.bright_green,
       tokyo_storm.bright_yellow,
       tokyo_storm.bright_blue,
       tokyo_storm.bright_magenta,
       tokyo_storm.bright_cyan,
       tokyo_storm.bright_white,
   },
   tab_bar = {
       background = 'rgba(0, 0, 0, 0.4)',
       active_tab = {
           bg_color = tokyo_storm.surface2,
           fg_color = tokyo_storm.text,
       },
       inactive_tab = {
           bg_color = tokyo_storm.surface0,
           fg_color = tokyo_storm.subtext1,
       },
       inactive_tab_hover = {
           bg_color = tokyo_storm.surface0,
           fg_color = tokyo_storm.text,
       },
       new_tab = {
           bg_color = tokyo_storm.base,
           fg_color = tokyo_storm.text,
       },
       new_tab_hover = {
           bg_color = tokyo_storm.mantle,
           fg_color = tokyo_storm.text,
       },
   },
   visual_bell = tokyo_storm.red,
   split = tokyo_storm.overlay0,
}

return colorscheme

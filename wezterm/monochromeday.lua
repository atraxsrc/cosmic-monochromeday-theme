-- MonochromeDay for WezTerm, part of cosmic-monochromeday-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("monochromeday")
-- To follow COSMIC's Dark / Light toggle with the Monochrome half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "monochrome" or "monochromeday")

return {
  foreground = "#1A1A1A",
  background = "#E6E6E6",

  cursor_bg = "#5C5C5C",
  cursor_fg = "#E6E6E6",
  cursor_border = "#5C5C5C",
  compose_cursor = "#5C5C5C",

  selection_bg = "#C0C0C0",
  selection_fg = "none",

  scrollbar_thumb = "#C0C0C0",
  split = "#C0C0C0",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#E6E6E6", "#424242", "#515151", "#5C5C5C", "#5C5C5C", "#1A1A1A", "#5C5C5C", "#1A1A1A" },
  brights = { "#ABABAB", "#282828", "#424242", "#515151", "#1A1A1A", "#424242", "#515151", "#1D1D1D" },

  copy_mode_active_highlight_bg = { Color = "#5C5C5C" },
  copy_mode_active_highlight_fg = { Color = "#E6E6E6" },
  copy_mode_inactive_highlight_bg = { Color = "#515151" },
  copy_mode_inactive_highlight_fg = { Color = "#E6E6E6" },

  quick_select_label_bg = { Color = "#5C5C5C" },
  quick_select_label_fg = { Color = "#E6E6E6" },
  quick_select_match_bg = { Color = "#515151" },
  quick_select_match_fg = { Color = "#E6E6E6" },

  tab_bar = {
    background = "#E6E6E6",
    active_tab = { bg_color = "#5C5C5C", fg_color = "#E6E6E6", intensity = "Bold" },
    inactive_tab = { bg_color = "#F1F1F1", fg_color = "#5C5C5C" },
    inactive_tab_hover = { bg_color = "#DBDBDB", fg_color = "#1A1A1A" },
    new_tab = { bg_color = "#E6E6E6", fg_color = "#5C5C5C" },
    new_tab_hover = { bg_color = "#DBDBDB", fg_color = "#5C5C5C" },
  },
}

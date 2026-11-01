#!/usr/bin/env bash
# Installs the MonochromeDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/monochromeday.lua" ] && cp "$dest/monochromeday.lua" "$dest/monochromeday.lua.bak"
cp "$dir/monochromeday.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("monochromeday")'

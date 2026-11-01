#!/usr/bin/env bash
# Installs the MonochromeDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/MonochromeDay.conf" ] && cp "$dest/MonochromeDay.conf" "$dest/MonochromeDay.conf.bak"
cp "$dir/MonochromeDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/MonochromeDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."

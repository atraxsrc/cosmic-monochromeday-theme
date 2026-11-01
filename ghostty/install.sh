#!/usr/bin/env bash
# Installs the MonochromeDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/MonochromeDay" ] && cp "$dest/MonochromeDay" "$dest/MonochromeDay.bak"
cp "$dir/MonochromeDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = MonochromeDay"
echo "(or  theme = dark:Monochrome,light:MonochromeDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"

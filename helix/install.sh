#!/usr/bin/env bash
# Installs the MonochromeDay Helix theme into ~/.config/helix/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/helix/themes
mkdir -p "$dest"
[ -f "$dest/monochromeday.toml" ] && cp "$dest/monochromeday.toml" "$dest/monochromeday.toml.bak"
cp "$dir/monochromeday.toml" "$dest/"
echo 'Done. Add to ~/.config/helix/config.toml:  theme = "monochromeday"'

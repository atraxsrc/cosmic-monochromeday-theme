#!/usr/bin/env bash
# Installs the MonochromeDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/monochromeday.yml" ] && cp "$dest/monochromeday.yml" "$dest/monochromeday.yml.bak"
cp "$dir/monochromeday.yml" "$dest/"
echo "Done. zsh/monochromeday.zsh points LG_CONFIG_FILE at config.yml plus monochromeday.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/monochromeday.yml\""

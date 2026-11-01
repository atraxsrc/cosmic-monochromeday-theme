#!/usr/bin/env bash
# Installs the MonochromeDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/monochromeday.gitconfig" ] && cp "$dest/monochromeday.gitconfig" "$dest/monochromeday.gitconfig.bak"
cp "$dir/monochromeday.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/monochromeday.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/monochromeday.gitconfig"
fi
echo "Needs the bat MonochromeDay theme for the code colours: ./bat/install.sh"

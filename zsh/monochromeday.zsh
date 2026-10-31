# Monochrome Day zsh layer: colours, aliases, prompt.
#
# Source it at the END of your own ~/.zshrc, after oh-my-zsh.sh:
#   source /path/to/cosmic-monochromeday-theme/zsh/monochromeday.zsh
#
# Keep machine-specific or private lines (PATH, scaling, nvm, ...) in your
# own ~/.zshrc, not here.
#
#  bg:      #E6E6E6   fg:      #616161
#  primary: #5c5c5c   secondary:#5c5c5c
#  border:  #1a1a1a   success: #515151
#  error:   #424242   dim:     #818181
#
# No hue, so weight and underline do the work colour would.

# ── File colours (ls, lsd file names, completion menu) ─────────────────────────

export LS_COLORS="di=1;38;2;26;26;26:ln=3;38;2;92;92;92:ex=1;38;2;66;66;66:*.zip=4;38;2;81;81;81:*.tar=4;38;2;81;81;81:*.gz=4;38;2;81;81;81:*.xz=4;38;2;81;81;81:*.7z=4;38;2;81;81;81:*.deb=4;38;2;81;81;81:*.png=38;2;97;97;97:*.jpg=38;2;97;97;97:*.jpeg=38;2;97;97;97:*.webp=38;2;97;97;97:*.gif=38;2;97;97;97:*.mp4=3;38;2;97;97;97:*.mkv=3;38;2;97;97;97:*.rs=38;2;66;66;66:*.py=38;2;66;66;66:*.js=38;2;66;66;66:*.ts=38;2;66;66;66:*.sh=38;2;66;66;66:*.md=38;2;81;81;81:*.txt=38;2;81;81;81:or=9;38;2;66;66;66"

# oh-my-zsh reads LS_COLORS before this file loads, so refresh the menu colours
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ── zsh-autosuggestions / zsh-syntax-highlighting ──────────────────────────────

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#818181'

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=#5c5c5c'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#5c5c5c'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#5c5c5c'
ZSH_HIGHLIGHT_STYLES[function]='fg=#5c5c5c'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#5c5c5c'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#5c5c5c,underline'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#5c5c5c,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#1a1a1a,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#424242,bold,underline'
ZSH_HIGHLIGHT_STYLES[path]='fg=#616161,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#1a1a1a'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#1a1a1a'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#616161'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#616161'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#515151'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#515151'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#515151'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#616161'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#616161'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#818181'

# ── Aliases (only when the tool is installed) ──────────────────────────────────

if (( $+commands[lsd] )); then
    alias ls='lsd'
    alias la='lsd -a'
    alias ll='lsd -l'
    alias lla='lsd -la'
fi

# Debian/Ubuntu ship bat as batcat
if (( $+commands[batcat] )); then
    alias cat='batcat'
elif (( $+commands[bat] )); then
    alias cat='bat'
fi

(( $+commands[cosmic-edit] )) && alias edit='cosmic-edit'

if (( $+commands[nvim] )); then
    alias vi='nvim'
    alias vim='nvim'
    alias v='nvim'
fi

# ── Prompt ─────────────────────────────────────────────────────────────────────

# needs ZSH_THEME="" in ~/.zshrc
(( $+commands[starship] )) && eval "$(starship init zsh)"

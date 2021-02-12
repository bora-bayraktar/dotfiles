# Terminal prompt #
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git*' formats '%F{202}(%b)%f'
setopt prompt_subst
PROMPT='%B%F{34}%n@%m%f%F{15}:%f%F{33}%~%f ${vcs_info_msg_0_}%F{15}\$%f%b '

# Terminal Color #
export TERM='xterm-256color'

# Colorful 'ls' output #
export CLICOLOR=1

# Cursor style and vi-mode #
bindkey -v
KEYTIMEOUT=1
bindkey '^?' backward-delete-char
source ~/.zsh/vi_mode.zsh 

# Auto-suggestions #
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^k' autosuggest-accept

# Syntax higlighting #
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[command]='fg=red'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=red'
ZSH_HIGHLIGHT_STYLES[alias]='fg=red'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=57'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=57'

# Change the default git #
if [[ -e /usr/local/bin/git ]]; then
    export PATH=/usr/local/git/bin:$PATH
fi

# Language setting #
export LANG="en_US.UTF-8"

# History #
HISTSIZE=10000
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt inc_append_history # Share history between different zsh sessions
setopt share_history

# Aliases #
alias shpr='PROMPT="%B%F{34}%n@%m%f%F{15}:%f%F{32}%1~%f ${vcs_info_msg_0_}%F{15}\$%f%b "' # Shorter prompt
alias tmux-code='sh ~/.tmux/tmux_code.sh'
alias ll="ls -la"

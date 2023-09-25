# Lines configured by zsh-newuser-install
HISTFILE=~/.zshrc_history
HISTSIZE=1000
SAVEHIST=1000

# Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# export
plug "$HOME/.config/zsh/export.zsh"

# alias
plug "$HOME/.config/zsh/alias.zsh"

# source 
plug "$HOME/.config/zsh/source.zsh"

# extract 
plug "$HOME/.config/zsh/extract.zsh"

# bindkys 
plug "$HOME/.config/zsh/bindkeys.zsh.zsh"

# zap plugings
plug "hlissner/zsh-autopair"
plug "zap-zsh/vim"
plug "zap-zsh/sudo"
plug "zsh-users/zsh-autosuggestions"
plug "marlonrichert/zsh-autocomplete"
plug "zdharma-continuum/fast-syntax-highlighting"

# starship
eval "$(starship init zsh)"

zstyle '*:compinit' arguments -D -i -u -C -w
bindkey '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete

setopt auto_cd
# Load and initialise completion system
autoload -Uz compinit
compinit

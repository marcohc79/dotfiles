##### PERFORMANCE TRACKING (NUEVO - opcional para debugging)
# zmodload zsh/zprof  # Descomenta para ver tiempos de carga

##### CUSTOM CONFIG FILES
source "$HOME/.config/zsh/export.zsh"
source "$HOME/.config/zsh/alias.zsh"
source "$HOME/.config/zsh/extract.zsh"
source "$HOME/.config/zsh/sudo.plugin.zsh"

# Check if syntax highlighting theme exists before sourcing
if [[ -f "$HOME/.local/share/zinit/plugins/zsh-users---zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh" ]]; then
    source "$HOME/.local/share/zinit/plugins/zsh-users---zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh"
fi

##### History configuration
HISTSIZE=50000                       # AUMENTADO de 10000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history

##### History behavior
setopt appendhistory
setopt inc_append_history
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_verify
setopt extended_history

##### Additional useful options (NUEVO)
setopt auto_pushd                    # Push directories to stack automatically
setopt pushd_ignore_dups             # Don't push duplicates
setopt interactive_comments          # Allow comments in interactive mode
setopt no_beep                       # No beeping

##### KEYBINDINGS
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word       # NUEVO - Ctrl+Right
bindkey "^[[1;5D" backward-word      # NUEVO - Ctrl+Left
bindkey "^[[H" beginning-of-line     # NUEVO - Home
bindkey "^[[F" end-of-line           # NUEVO - End

##### COMPLETIONS
autoload -Uz compinit

# Speed up compinit by checking cache once per day (NUEVO)
if [[ -n ${ZDOTDIR}/.zcompdump(#qNmh+24) ]]; then
    compinit
else
    compinit -C
fi

setopt auto_cd
setopt auto_menu                     # NUEVO - Show menu on tab
setopt complete_in_word              # NUEVO - Complete from both ends
setopt always_to_end                 # NUEVO - Move cursor to end after completion

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands

##### ZINIT SETUP
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

##### ZINIT ANNEXES
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

##### ZSH PLUGINS - Optimized loading order
zinit light zsh-users/zsh-completions

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit snippet OMZP::git

# fzf-tab configuration
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --icons --color=always $realpath'
zstyle ':fzf-tab:complete:z:*' fzf-preview 'eza --icons --color=always $realpath'
zstyle ':fzf-tab:complete:zi:*' fzf-preview 'eza --icons --color=always $realpath'

##### SHELL INTEGRATIONS (MUST BE LAST)
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

##### Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/mhuamani/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

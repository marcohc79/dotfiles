# Aliases

alias vim='lvim'
#alias nvim='lvim'
alias c='clear'

# exa
alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -F --icons --color=always --group-directories-first'
alias l.='eza -a | batgrep "^\."'

# dnf | pacman 
alias install='sudo dnf install '
alias search='dnf search '
alias update='sudo dnf update'
# alias uninstall='sudo pacman -R '
# alias unlock='sudo rm -rf /var/lib/pacman/db.lck'

# z
alias ..="z .."
alias ....="z ../.."
alias ......="z ../../.."
alias ........="z ../../../.."

# Colorize grep output (good for log files) ###
# alias grep='batgrep --color=auto'
# alias egrep='egrep --color=auto'
# alias fgrep='fgrep --color=auto'
alias man="batman"

# display imagenes in terminal with kitty
alias icat="kitty +kitten icat"

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

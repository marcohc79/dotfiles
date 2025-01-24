# Aliases

alias vim='lvim'
#alias nvim='lvim'
alias c='clear'

# exa
alias lsz='eza --icons --color=auto --group-directories-first'
alias llz='eza -alF --icons --color=auto --group-directories-first'
alias laz='eza -a --icons --color=auto --group-directories-first'
alias lz='eza -F --icons --color=auto --group-directories-first'
alias l.z='eza -a | batgrep "^\."'

# dnf | pacman 
# alias install='sudo dnf install '
# alias search='dnf search '
# alias update='sudo dnf update'
# alias uninstall='sudo pacman -R '
alias unlock='sudo rm -rf /var/lib/pacman/db.lck'
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S '

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

alias nvim='lvim'
alias cat='bat'

# exa
alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -F --icons --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

# pacman
alias install='sudo pacman -S '
alias update='sudo pacman -Syyu && paru -Syyu'
alias unlock='sudo rm -rf /var/lib/pacman/db.lck'

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."

# Colorize grep output (good for log files) ###
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# display imagenes in terminal with kitty
alias icat="kitty +kitten icat"

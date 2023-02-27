#!/bin/sh

# vim and emacs
alias nvim="lvim"

# bat
alias cat='bat'

# Changing "ls" to "exa" ###
alias ls='exa --icons --color=always --group-directories-first'
alias ll='exa -alF --icons --color=always --group-directories-first'
alias la='exa -a --icons --color=always --group-directories-first'
alias l='exa -F --icons --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# dnf and pacman
# alias update='sudo dnf update' 
# alias install='sudo dnf install '
alias install='sudo pacman -S '
alias update='sudo pacman -Syyu'

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."

# Colorize grep output (good for log files) ###
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something ###
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

#!/bin/sh

export PATH=~/.cargo/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=$HOME/.local/share/go/bin:$PATH
export GOPATH=$HOME/.local/share/go
export PATH=$HOME/.fnm:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/home/mhcaballero/.local/share/fnm:$PATH"
export PYTHONPATH=/lib/python3.10/site-packages
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=$HOME/.local/bin/lvim
export SUDO_EDITOR=$HOME/.local/bin/lvim
export VISUAL=~/.local/bin/lvim

# export EDITOR=/usr/bin/nvim
# export SUDO_EDITOR=/usr/bin/nvim
# export VISUAL=/usr/bin/nvim
eval "$(fnm env)"
eval "$(zoxide init zsh)"
# eval "`pip completion --zsh`"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/.miniconda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

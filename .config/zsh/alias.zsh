# Kitty SSH with full terminal capabilities
alias kssh='kitty +kitten ssh'

# Kitty kittens - Advanced terminal tools
alias icat='kitty +kitten icat'
alias kdiff='kitty +kitten diff'
alias kthemes='kitty +kitten themes'
alias kcopy='kitty +kitten clipboard'
alias kunicode='kitty +kitten unicode_input'
alias kpanel='kitty +kitten panel'
alias kask='kitty +kitten ask'
alias kclipimg='kitty +kitten clipboard --use-primary'

# Search tools
alias grep='grep --color=auto'
alias rg='rg --smart-case --hidden' # Ripgrep mejorado
alias vgrep='batgrep --color=auto'
alias igrep='kitty +kitten hyperlinked_grep'

# Eza
alias l='eza --icons --color=auto --group-directories-first'        # Más corto
alias lz='eza --icons --color=auto --group-directories-first'       # Original
alias ll='eza -alF --icons --color=auto --group-directories-first'  # Long format
alias llz='eza -alF --icons --color=auto --group-directories-first' # Original
alias la='eza -a --icons --color=auto --group-directories-first'    # All files
alias laz='eza -a --icons --color=auto --group-directories-first'   # Original
alias lt='eza --tree --icons --color=auto'                          # Tree view
alias ltree='eza --tree --icons --color=auto'                       # Original
alias lh='eza -a | batgrep "^\."'                                   # Hidden files only
alias l.z='eza -a | batgrep "^\."'                                  # Original

# History inspection
alias h='history 1'
alias hg='history | grep'
alias hb='less ~/.zsh_history'

# Quick Navigation
alias ..="z .."
alias ...="z ../.."
alias ....="z ../../.."
alias .....="z ../../../.."
alias -- -="cd -" # Volver al directorio anterior

# Directory shortcuts (NUEVO)
alias home="cd ~"
alias docs="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# System utilities
alias man="batman"
alias cp='cp -iv'       # Interactive + verbose
alias mv='mv -iv'       # Interactive + verbose
alias rm='rm -iv'       # Interactive + verbose
alias mkdir='mkdir -pv' # Create parents + verbose
alias df='df -h'
alias du='du -h'
alias free='free -h'

# Quick edits (MEJORADO)
alias ezsh='nvim ~/.zshrc'
alias zsha='nvim ~/.config/zsh/alias.zsh'
alias zshe='nvim ~/.config/zsh/export.zsh'
alias v='nvim'
alias vim='nvim'

# System monitoring
alias ports='ss -tulanp'      # Ver puertos abiertos
alias myip='curl ifconfig.me' # Tu IP pública

# LaTeX shortcuts
alias zp='zathura'
alias tex='pdflatex'
alias texwatch='latexmk -pdf -pvc' # Auto-recompile LaTeX
alias texclean='latexmk -c'        # Limpiar archivos temporales

# Development
alias py='python'
alias ipy='ipython'
alias jl='jupyter lab'
alias serve='python -m http.server' # Simple HTTP server

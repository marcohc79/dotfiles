##### AMD
export AMD_VULKAN_ICD=RADV
export RADV_PERFTEST=gpl

##### PATH Configuration
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.duckdb/cli/latest:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

##### Default Applications
export TERMINAL="kitty"
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export BROWSER="firefox"

##### History Configuration
export HISTIGNORE="ls:cd:pwd:exit:clear:history"

##### Batman - Enhanced man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

##### Bat (better cat) configuration (NUEVO)
export BAT_THEME="Catppuccin Mocha" # Match your GTK theme
export BAT_STYLE="numbers,changes,header"

##### FZF Configuration - Catppuccin Mocha theme
export FZF_DEFAULT_OPTS="
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
  --layout=reverse
  --border=rounded
  --height=60%
  --info=inline"

# Use fd instead of find for better performance
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# CTRL+T - File selection
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --preview-window 'right:60%:wrap'"

# CTRL+R - Command history
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | wl-copy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# ALT+C - Directory navigation
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
export FZF_ALT_C_OPTS="
  --preview 'eza --tree --color=always {} | head -200'
  --preview-window 'right:60%:wrap'"

##### Zoxide configuration
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"

##### Language and locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

##### XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

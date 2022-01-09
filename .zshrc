# Alias
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gl="git log"

# Rust
CARGO_BIN="$HOME/.cargo/bin"
if [ -d "$CARGO_BIN" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
fi

# Go
GOPATH="$HOME/go"
if [ -d "$GOPATH" ]; then
  export GOPATH
  export PATH="$PATH:$GOPATH/bin"
fi

# Oh My ZSH
export ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

if [ -d "$ZSH" ]; then
  plugins=(
    git
    macos
    rust
    golang
    tmux  
  )
  source $ZSH/oh-my-zsh.sh
fi

# config for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# pyenv - must be present in the end
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

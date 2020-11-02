# Rust
CARGO_BIN="$HOME/.cargo/bin"
if [ -d "$CARGO_BIN" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
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
    osx
    rust
    cargo
    tmux  
  )
  source $ZSH/oh-my-zsh.sh
fi

# pyenv - must be present in the end
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

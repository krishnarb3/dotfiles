# dotfiles
My personal config setup using collection of dotfiles

## Pre-setup
### Install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Add config to .zshrc
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:krishnarb3/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

## Setup
```bash
config checkout
config config --local status.showUntrackedFiles no
```

Reference: [Atlassian dotfiles tutorial](https://www.atlassian.com/git/tutorials/dotfiles)

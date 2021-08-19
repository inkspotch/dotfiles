#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# update dotfiles
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# make dirs
mkdir -p "$HOME/.config/nvim"

# link files

ln -s "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/vimrc" "$HOME/.config/nvim/init.vim"

# install

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/oh-my-zsh.sh"
. "$DOTFILES_DIR/install/plug.sh"

. "$DOTFILES_DIR/install/aliases.sh"
. "$DOTFILES_DIR/install/git_setup.sh"

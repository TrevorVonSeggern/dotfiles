#!/bin/bash
CDIR=`pwd`

# zsh
[[ -f $HOME/.zshrc ]] && echo "about to delete zshrc" && rm ~/.zshrc
ln -s $CDIR/.zshrc ~/.zshrc

# gitconfig
ln -s $CDIR/.gitconfig ~/.gitconfig

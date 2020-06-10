#!/bin/bash

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# zsh
[[ -f ~/.zshrc ]] && echo "about to delete zshrc" && rm ~/.zshrc
ln -s $CDIR/.zshrc ~/.zshrc

# gitconfig
ln -s $CDIR/.gitconfig ~/.gitconfig

#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc

# gitconfig
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

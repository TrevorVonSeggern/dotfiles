#!/bin/bash

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $CDIR/.zshenv

# zsh
[[ -f ~/.zshenv ]] && rm ~/.zshenv
[[ ! -d ~/.conf ]] && ln -s $CDIR/.zshenv ~/.zshenv

[[ ! -f ~/.config ]] && ln -s $CDIR ~/.config


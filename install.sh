#!/bin/bash
CDIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"


# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[[ -f $HOME/.zshenv ]] && rm $HOME/.zshenv

ln -s "$CDIR/.zshenv" $HOME/.zshenv

[[ ! -d $HOME/.config ]] && ln -s "$CDIR" $HOME/.config


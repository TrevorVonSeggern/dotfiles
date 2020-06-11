#!/bin/bash

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# zsh
[[ -f ~/.zshenv ]] && rm ~/.zshenv
ln -s $CDIR/.zshenv ~/.zshenv

[[ ! -f ~/.config ]] && ln -s $CDIR ~/.config

mkdir -p $HOME/.cache/vim/{undo,swap,backup} $HOME/.config

if empty("$XDG_CACHE_HOME")
    let $XDG_CACHE_HOME="$HOME/.cache"
endif

if empty("$XDG_CONFIG_HOME")
    let $XDG_CONFIG_HOME="$HOME/.config"
endif

if empty("$XDG_DATA_HOME")
    let $XDG_DATA_HOME="$HOME/.local/share"
endif

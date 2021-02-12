#!/bin/bash
CDIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# zsh
if [[ -f "$HOME/.zshenv" ]]; then
       rm $HOME/.zshenv
fi
ln -s "$CDIR/.zshenv" $HOME/.zshenv
[[ ! -d $HOME/.config ]] && ln -s "$CDIR" $HOME/.config
[[ ! -d $HOME/.config/zsh/oh-my-zsh ]] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link the .config directory
[[ ! -d $HOME/.config ]] && ln -s "$CDIR" $HOME/.config


# install all the normal required packages
installList="$( cat $CDIR/installedPackages.txt | awk '{ printf $1; printf " " }' )"
sudo apt -qq -y install $installList


# some npm stuff
mkdir -p "${XDG_CACHE_HOME}/.npm-packages"

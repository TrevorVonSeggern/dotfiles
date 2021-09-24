#!/bin/bash
CDIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# install all the normal required packages
sudo add-apt-repository ppa:aslatter/ppa
installList="$( cat $CDIR/installedPackages.txt | awk '{ printf $1; printf " " }' )"
sudo apt -qq -y install $installList

# zsh
if [[ -f "$HOME/.zshenv" ]]; then
       rm $HOME/.zshenv
fi
ln -s "$CDIR/.zshenv" $HOME/.zshenv
[[ ! -d $HOME/.config ]] && ln -s "$CDIR" $HOME/.config
[[ ! -d $HOME/.config/zsh/oh-my-zsh ]] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link the .config directory
[[ ! -d $HOME/.config ]] && ln -s "$CDIR" $HOME/.config

echo "Installing nodejs:"
if which node > /dev/null
then
	echo "Node is installed, skipping..."
else
	curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
	sudo apt-get install -y nodejs
fi



sudo update-alternatives --config alacritty

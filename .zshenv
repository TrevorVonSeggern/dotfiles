export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$XDG_DATA_HOME/zsh/history
export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"
export MYVIMRC=$XDG_CONFIG_HOME/vim/vimrc

#export VISUAL="alacritty -e /usr/bin/vim"
export EDITOR=vim


# some config for npm
# # npm
# see npm config ls -l | grep /
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm

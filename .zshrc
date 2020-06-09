# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration

# I want to display the calendar on startup
cal

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export EDITOR='vim'

# Example aliases
# alias zshconfig="mate ~/.zshrc"

export CC=gcc
export CXX=g++
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # dotnet disable spying

# elm
alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.19'
# python
alias pthon='docker run -it --rm -v "$(pwd):/project" -e "HOME=/project" -u $UID:$GID -p 8080:8080 python:3'
# best git log alias
alias glog='git log --date-order --all --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'


# Better keybindings
bindkey '^H' backward-kill-word
bindkey '5~' kill-word


path+=('~/.local/bin')
# dotnet cli
path+=('~/.dotnet/tools/')
# snap in path
path+=('/snap/bin/')



# Docker in wsl to non wsl
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
	export DOCKER_HOST=tcp://localhost:2375

	# for angular dev
	export CHROME_BIN=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
	umask 0022
fi

# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



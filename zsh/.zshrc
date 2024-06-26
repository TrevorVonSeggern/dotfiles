# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME/zsh/oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="afowler"

# more colors
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"
setopt CORRECT
unsetopt CORRECTALL

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
[ -f $HISTFILE ] || mkdir -p $XDG_DATA_HOME/zsh && touch $HISTFILE
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 96% --reverse --preview "cat {}"'

# User configuration

# display welcome message
echo '/ / /\ \ \___| | ___ ___  _ __ ___   ___'
echo '\ \/  \/ / _ \ |/ __/ _ \|  _ ` _ \ / _ \'
echo ' \  /\  /  __/ | (_| (_) | | | | | |  __/'
echo '  \/  \/ \___|_|\___\___/|_| |_| |_|\___|'

# I want to display the calendar on startup
[[ -f /usr/bin/cal ]] && cal

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export EDITOR='nvim'

export CC=gcc
export CXX=g++
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # dotnet disable spying


# elm
alias devbox.elm='docker run -it --rm \
	-e HOST_USER_ID=$UID \
	-e HOST_GROUP_ID=$GID \
	-v $PWD:/home/me/work \
	-v /home/$USER/.config:/home/me/.config \
	-v /home/$USER/.local:/home/me/.local \
	-v /home/$USER/.cache:/home/me/.cache \
	-v /home/$USER/.ssh:/home/me/.ssh \
	teamtvo/devbox:elm'

# dotnet
alias devbox.dotnet='docker run -it --rm \
	-e HOST_USER_ID=$UID \
	-e HOST_GROUP_ID=$GID \
	-v "$(pwd)":/home/me/work \
	-v /home/$USER/.config:/home/me/.config \
	-v /home/$USER/.local:/home/me/.local \
	-v /home/$USER/.cache:/home/me/.cache \
	-v /home/$USER/.ssh:/home/me/.ssh \
	teamtvo/devbox:dotnet'

# node
alias devbox.node='docker run -it --rm \
	-e HOST_USER_ID=$UID \
	-e HOST_GROUP_ID=$GID \
	-v $PWD:/home/me/work \
	-v /home/$USER/.config:/home/me/.config \
	-v /home/$USER/.local:/home/me/.local \
	-v /home/$USER/.cache:/home/me/.cache \
	-v /home/$USER/.ssh:/home/me/.ssh \
	teamtvo/devbox:node'

# python
alias devbox.python='docker run -it --rm \
	-e HOST_USER_ID=$UID \
	-e HOST_GROUP_ID=$GID \
	-v $PWD:/home/me/work \
	-v /home/$USER/.config:/home/me/.config \
	-v /home/$USER/.local:/home/me/.local \
	-v /home/$USER/.cache:/home/me/.cache \
	-v /home/$USER/.ssh:/home/me/.ssh \
	teamtvo/devbox:python'

# best git log alias
alias glog='git log --date-order --all --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'

alias vi="nvim"
alias vim="nvim"

# better cd aliases
alias cd=' cd'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'

# Better keybindings
#
# # better cd aliases
alias cd=' cd'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
# set -o vi this might undo some features. like ctrl backspace

#starship for autocompletion
if type minikube > /dev/null; then
	eval "$(starship init zsh)"
fi


path+=("$HOME/.local/bin")
path+=("$HOME/.dotnet/tools/")
# dotnet cli
if [ -d "$HOME/.dotnet" ]; then
	export DOTNET_ROOT="$HOME/.dotnet"
	path+=("$HOME/.dotnet/tools/")
	path+=("$HOME/.dotnet")
fi
if [ -d "/usr/share/dotnet" ]; then
	export DOTNET_ROOT=/usr/share/dotnet
fi

# snap in path
[ -f $snap ] && path+=("/snap/bin")
path+=("$XDG_DATA_HOME/.go/bin")


[ -f $python2.7 ] && path+=("/snap/bin")

if type minikube > /dev/null; then
	alias ks='minikube kubectl'
fi
if type microk8s > /dev/null; then
	alias ks="microk8s kubectl"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if type "$yarn" > /dev/null; then
	path+=($(yarn global bin))
fi


# go. Gopath is no longer needed. see https://stackoverflow.com/questions/10838469/how-to-compile-go-program-consisting-of-multiple-files/61793820#61793820

# Arduino variables
export ARDUINO_DIR='/usr/share/arduino'
export ARDMK_DIR='/usr/share/arduino'
export AVR_TOOLS_DIR='/usr'

# Docker in wsl to non wsl
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
	# for angular dev
	export CHROME_BIN=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
	umask 0022
fi

autoload -U edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)


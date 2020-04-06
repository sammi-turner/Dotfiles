# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
PS1=' \w \$ '
RANGER_LOAD_DEFAULT_RC=FALSE
EDITOR=vim
PAGER=vim
export VISUAL EDITOR=vim
export EDITOR

# For pip installs
export PATH="/usr/local/lib/python3.6/dist-packages:$PATH"

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Can Haz Permissions?
alias chp='sudo chmod -R 777'

# Ranger
alias rr='ranger'
alias rs='sudo ranger'

# apt commands (Debian/Ubuntu-based distros)
alias ai='sudo apt install'
alias rem='sudo apt remove'
alias pur='sudo apt purge'
alias upd='sudo apt update'
alias upg='sudo apt upgrade'
alias aar='sudo apt autoremove'

# pacman commands (Arch-based distros)
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias up='sudo pacman -Syyu'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias list='pacman -Q > package_list.txt'

# For pkgbuilds from the Arch user repository
alias mp='makepkg -si'

# YouTube Downloader
alias ydl='youtube-dl'
alias ydl-aac="youtube-dl --extract-audio --audio-format aac "
alias ydl-best="youtube-dl --extract-audio --audio-format best "
alias ydl-flac="youtube-dl --extract-audio --audio-format flac "
alias ydl-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ydl-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ydl-opus="youtube-dl --extract-audio --audio-format opus "
alias ydl-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ydl-wav="youtube-dl --extract-audio --audio-format wav "
alias ydl-best="youtube-dl -f bestvideo+bestaudio "

# Cloning a repo
alias gcl='git clone'

# Use Make File
alias mci='sudo make clean install'

# Compile ncurses C code with LLVM
alias ncu='clang -lncurses'

# Change directory to my C folder
alias cdc='cd C'

# Run a freshly compiled binary
alias run='./a.out'

# React
alias cra='npx create-react-app'

# Svelte
alias sve='npx degit sveltejs/template'

# Vue
alias vcr='vue create'

# Yarn
alias yin='yarn install'
alias yst='yarn start'
alias yse='yarn serve'
alias yde='yarn dev'
alias ybu='yarn build'

# NPM
alias nin='npm install'
alias nst='npm start'
alias nse='npm run serve'
alias nde='npm run dev'
alias nbu='npm run build'

# Start up with .xinitrc
alias sx='startx'

# Shut-down from terminal
alias sn='sudo shutdown now'

# Reboot from terminal
alias sr='sudo reboot'

# Neofetch
alias neo='neofetch'

# Reload this file
alias sb='source .bashrc'

xrdb ~/.Xresources

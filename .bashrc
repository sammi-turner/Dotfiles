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
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/lib:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Emacs Environment Variable
export PATH="$HOME/.emacs.d/bin:$PATH"

# Deno Environment Variable
export PATH="$HOME/.deno/bin:$PATH"

# Rust Environment Variable
export PATH="$HOME/.cargo/bin:$PATH"

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

# Change ownership from root to user
alias cho='sudo chown -R $USER'

# GNU Compile C
alias mgw='gcc -lncurses main.c'

# GNU Compile C++ for Speed
alias snc='g++ -lncurses main.cpp -flto -O'

# GNU Compile C++ for Binary Size
alias siz='g++ -lncurses main.cpp -flto -Os'

# Run Binaries
alias run='./a.out'

# Mono
alias mb='csc *.cs'
alias mr='mono Program.exe'

# Python
alias pa='python app.py'

# Rust
alias cn='cargo new'
alias ci='cargo init'
alias cb='cargo build'
alias ch='cargo check'
alias cr='cargo run'

# JavaScript
alias ny='npm init --yes'
alias ni='node index.js'

# Ranger
alias rr='ranger'
alias rs='sudo ranger'

# Apt commands (Debian or Ubuntu based distros)
alias upd='sudo apt update'
alias upg='sudo apt upgrade'
alias ai='sudo apt install'
alias ap='sudo apt purge'

# Pacman commands (Arch based distros)
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias up='sudo pacman -Syyu'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias list='pacman -Q > package_list.txt'

# For pkgbuilds from the Arch user repository
alias mp='makepkg -sirc'

# YouTube Downloader
alias ydl='youtube-dl'
alias ydl-aac="youtube-dl --extract-audio --audio-format aac "
alias ydl-flac="youtube-dl --extract-audio --audio-format flac "
alias ydl-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ydl-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ydl-opus="youtube-dl --extract-audio --audio-format opus "
alias ydl-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ydl-wav="youtube-dl --extract-audio --audio-format wav "
alias ydl-best="youtube-dl -f bestvideo+bestaudio "

# Clone a repo
alias gcl='git clone'
alias nd='npx degit'

# Use Make File
alias mci='sudo make clean install'

# Start up with .xinitrc
alias sx='startx'

# Shut-down from terminal
alias sn='sudo shutdown now'

# Reboot from terminal
alias sr='sudo reboot'

# Reload this file
alias sb='source .bashrc'

# Neofetch
alias neo='neofetch'

# Deno
alias dc='deno cache'
alias dr='deno run -q'
alias dra='deno run -A -q'
alias dft='deno fmt'

# Dotnet
alias dnr='dotnet run'

# Blazor
alias bsa='dotnet new blazorserver -o'
alias wsm='dotnet new wasm -o'

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

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# Can Haz Permissions?
alias chp='sudo chmod -R 777'

# Clear Out Old Man Pages
alias omp='sudo rm -r /var/cache/man/oldlocal'

# Search Man Pages
alias smp='man -k . | dmenu'

# Ranger
alias rr='ranger'
alias rmu='ranger /run/media/user/'

# List
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls' 					
alias l.="ls -A | egrep '^\.'" 

# Git Clone
alias gcl='git clone'

# Disk Usage
alias du='df -h'

# Free
alias free="free -mt"

# User List
alias userlist="cut -d: -f1 /etc/passwd"

# Merge New Settings
alias merge="xrdb -merge ~/.Xresources"

# Grub Update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

# Add New Fonts
alias fc='sudo fc-cache -fv'

# Hardware Info
alias hw="hwinfo --short"

# Check Vulnerabilities Microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

# Fastest Local Mirrors 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

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

# Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

# For Pkgbuilds
alias mp='makepkg -si'

# Use Make File
alias mci='sudo make clean install'

# Compile ncurses C code with LLVM
alias ncu='clang -lncurses'

# Change directory to my C folder
alias cdc='cd C'

# Run a freshly compiled binary
alias run='./a.out'

# Pacman commands
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias up='sudo pacman -Syyu'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias list='pacman -Q > package_list.txt'

# Start up with .xinitrc
alias sx='startx'

# Shut-down from terminal
alias sn='sudo shutdown now'

# Reboot from terminal
alias sr='sudo reboot'

# Neofetch
alias neo='echo;neofetch'

# Create dotnet project folder
alias dnc='dotnet new console -o'

# Dotnet run
alias dr='dotnet run'

# Reload this file
alias sb='source .bashrc'

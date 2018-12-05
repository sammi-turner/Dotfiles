# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
	then PATH="$HOME/.bin:$PATH"
fi

# Environment Variables
PS1=' > '
RANGER_LOAD_DEFAULT_RC=FALSE
EDITOR=vim
PAGER=vim
TERM=urxvt
export VISUAL EDITOR=vim
export EDITOR
export TERM

# General Shortcuts
alias ls='ls --color=auto'
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias hw="hwinfo --short"
alias mirrors="sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"

# For pkgbuilds
alias mp='makepkg -si'

# Pacman commands
alias ps='sudo pacman -S'
alias pr='sudo pacman -R'
alias update='sudo pacman -Syyu'

# To generate a text file containing a list of installed packages
alias list='pacman -Q > package_list.txt'

# To reload .Xresources
alias xr='xrdb ~/.Xresources'

# DuckDuckGo search in the terminal
alias dr='ddgr --num 10'

# Ranger shortcuts
alias rh='ranger /home/user'
alias rd='ranger ~/Documents'
alias rr='ranger /run/media/user'

# YouTube downloader
alias ydl='youtube-dl'

# For system specs alongside a custom pic
alias neo='neofetch --w3m /home/user/Pictures/hal.png'

# Start up, shutdown and reboot with .xinitrc
alias sx='startx'
alias sn='sudo shutdown now'
alias sr='sudo reboot'

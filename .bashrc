# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
PS1='[\w] '
RANGER_LOAD_DEFAULT_RC=FALSE
EDITOR=nvim
PAGER=nvim
TERM=termite
export VISUAL EDITOR=nvim
export EDITOR
export TERM

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls' 					
alias l.="ls -A | egrep '^\.'"

#ranger
alias rh='ranger'
alias rmu='ranger /run/media/user/'   

#git clone
alias gcl='git clone'

#readable output
alias df='df -h'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#free
alias free="free -mt"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

#add new fonts
alias fc='sudo fc-cache -fv'

#hardware info --short
alias hw="hwinfo --short"

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#get fastest mirrors in your neighborhood 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

#youtube-dl
alias ydl='youtube-dl'
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

# For pkgbuilds
alias mp='makepkg -si'

# Pacman commands
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias up='sudo pacman -Syyu'

# To generate a text file containing a list of installed packages
alias list='pacman -Q > package_list.txt'

# For system specs
alias neo='echo;neofetch'

# Start up with .xinitrc
alias sx='startx'

# Shut-down from terminal
alias sn='sudo shutdown now'

# Reboot from terminal
alias sr='sudo reboot'

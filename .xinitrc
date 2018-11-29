# ~/.xinitrc
# when not using a display manager

# For hotkeys with bspwm
sxhkd &

# Authentication dialog for use with package manager GUIs in Linux
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Restore wallpaper
exec nitrogen --restore &

# Start window manager
exec bspwm
xset rate 200 50

# .bashrc

Package management aliases are included for both pacman (Arch) and apt (Debian/Ubuntu).

# .emacs

WARNING : Loading this config up may trigger an error message about certain packages not being installed.

To fix that problem, install those named packages using META-x, RETURN, package-install, RETURN, followed by the name of the missing package and RETURN again.

This config puts the back-up files that Emacs creates by default, into a .backup directory in the home folder.

In this config, META is set to the Super key. The ESC key also works as a spare META.

To cancel any command, use CTRL-g.

When configuring via the GUI, don't forget to select "save" under "options" to preserve the changes.

# .config/nvim

Uses vim-plug and the dracula theme by default.

# .config/vifm

A dual pane config with [Uberzug image previews](https://github.com/cirala/vifmimg).

# .config/ranger

A single pane config with no image previews.

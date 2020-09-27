# .bashrc

Package management aliases are included for both pacman (Arch) and apt (Debian/Ubuntu).

My config is quite bulky, but feel free to remove any unused environment variables or aliases that you don't need.

# .emacs

WARNING : Loading this config up may trigger an error message about certain packages not being installed.

To fix that problem, install those named packages using META-x, RETURN, package-install, RETURN, followed by the name of the missing package and RETURN again.

This config puts the back-up files that Emacs creates by default, into a .backup directory in the home folder.

In this config, META is set to the Super key. The ESC key also works as a spare META.

To cancel any command, use CTRL-g.

When configuring via the GUI, don't forget to select "save" under "options" to preserve the changes.

# .config/nvim

To toggle Nerdtree, press F6.

To switch the cursor between your text and the directory in Nerdtree, press CTRL-w-w.

Uses vim-plug and the dracula theme by default.

Don't forget to use the :PlugInstall command after adding new plug-ins to the config.

To remove plug-ins, simply delete them from init.vim and run the command :PlugClean.

# .config/vifm

A dual pane config with [Uberzug image previews](https://github.com/cirala/vifmimg).

# .config/ranger

A single pane config with no image previews.

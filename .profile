# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Load settings in Xmodmap
if [ -f "/home/stcastle/.Xmodmap" ] ; then
  xmodmap /home/stcastle/.Xmodmap
fi

# Use Spacebar as a Modifier
spare_modifier="Hyper_L"
#spare_modifier="Super_R"
# Find keycode for Hyper_L from modmap file, generated as follows:
#   xmodmap -pke > modmap
#   xmodmap -pm >> modmap
xmodmap -e "keycode 65 = $spare_modifier"
#xmodmap -e "add Hyper_L = $spare_modifier"
xmodmap -e "keycode any = space"
xcape -e "$spare_modifier=space"

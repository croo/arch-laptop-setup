#!/bin/bash

#config files for vim
cp ~/.vimrc .

#config files for bash prompt / aliases
cp ~/.bashrc .

#config files for xorg and xterm terminal 
cp ~/.Xresources .

#config files for openbox - includes menu and hotkeys
mkdir -p ./.config/openbox 
cp ~/.config/openbox/* ./.config/openbox

#config files for tint2 panel
mkdir -p ./.config/tint2
cp ~/.config/tint2/tint2rc ./.config/tint2

#Set the correct backlight module to make the keys set the brightness correctly 
mkdir -p ./etc/X11/xorg.conf.d
cp /etc/X11/xorg.conf.d/20-intel.conf ./etc/X11/xorg.conf.d

#Set the trackpoint module, so the middle-mouse button works correctly
mkdir -p /etc/X11/xorg.conf.d
cp /etc/X11/xorg.conf.d/10-trackpoint.conf ./etc/X11/xorg.conf.d

#!/bin/bash

#install kitty:
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
echo "PATH=$PATH:$HOME/kitty.app/bin" ~/.zshrc
echo "PATH=$PATH:dmenu-5.2/dmenu_run" ~/.zshrc
echo "alias d=dmenu_run" ~/.zshrc

#configure kitty:
mkdir -p ~/.config/kitty/
cp kitty.conf ~/config/kitty/.

#install font
mkdir -p ~/.fonts
cp times_new_roman_style_nerd_font/* ~/.fonts
fc-cache -f -v ~/.fonts

#!/bin/bash

#install wezterm
flatpak install --user flathub org.wezfurlong.wezterm
echo "alias wezterm='flatpak run org.wezfurlong.wezterm'" ~/.zshrc
#configure wezterm
cp -r wezterm/ ~/.config/wezterm

#install font
mkdir -p ~/.fonts
cp times_new_roman_style_nerd_font/* ~/.fonts
cp fall_back_symbols/* ~/.fonts
fc-cache -f -v ~/.fonts

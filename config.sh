#!/bin/bash

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
mkdir -p ~/.config/wal/templates/
mkdir -p ~/.config/rofi/
mkdir -p ~/.config/picom/
mkdir -p ~/.config/displays/
mkdir -p ~/.config/kitty/
mkdir -p ~/.config/i3blocks/

cp -r config/rofi/* ~/.config/rofi/
cp -r config/i3/* ~/.config/i3/
cp -r config/i3status/* ~/.config/i3status/
cp -r config/wal/* ~/.config/wal/
cp -r config/picom/* ~/.config/picom/
cp -r config/displays/* ~/.config/displays/
cp -r config/kitty/* ~/.config/kitty/
cp -r config/i3blocks/* ~/.config/i3blocks/

cp -r config/vim/.vimrc ~/.vimrc
cp -r config/xresources/.Xresources ~/.Xresources
sudo cp -r config/fonts/.local.conf /etc/fonts/.local.conf
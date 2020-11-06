#!/bin/bash

mkdir ~/.config/i3/
mkdir ~/.config/i3status/
mkdir -p ~/.config/wal/templates/
mkdir ~/.config/rofi/
mkdir -p ~/.config/picom
#mkdir ~/.config/polybar/

cp -r config/rofi/* ~/.config/rofi/
cp -r config/i3/* ~/.config/i3/
cp -r config/i3status/* ~/.config/i3status/
cp -r config/wal/* ~/.config/wal/
cp -r config/picom/* ~/.config/picom/
#cp -r config/polybar/* ~/.config/polybar/

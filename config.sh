#!/bin/bash

mkdir ~/.config/i3/
mkdir ~/.config/i3status/
mkdir -p ~/.config/wal/templates/
mkdir ~/.config/rofi/
#mkdir ~/.config/polybar/

cp -r rofi/* ~/.config/rofi/
cp -r config/i3/* ~/.config/i3/
cp -r config/i3status/* ~/.config/i3status/
cp -r wal/* ~/.config/wal/
#cp -r config/polybar/* ~/.config/polybar/

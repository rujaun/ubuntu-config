#!/bin/bash

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/
mkdir -p ~/.config/wal/templates/
mkdir -p ~/.config/rofi/
mkdir -p ~/.config/picom/
mkdir -p ~/.config/displays/

cp -r config/rofi/* ~/.config/rofi/
cp -r config/i3/* ~/.config/i3/
cp -r config/i3status/* ~/.config/i3status/
cp -r config/wal/* ~/.config/wal/
cp -r config/picom/* ~/.config/picom/
cp -r config/displays/* ~/.config/displays/


sudo cp -r config/fonts/* /etc/fonts/.local.conf
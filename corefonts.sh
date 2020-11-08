#!/bin/bash

sudo apt install -y fonts-font-awesome fonts-noto

sudo mkdir /usr/share/fonts/CoreFonts
sudo cp ./WinFonts/* /usr/share/fonts/CoreFonts/
sudo chmod 644 /usr/share/fonts/CoreFonts/*
fc-cache -f -v
#!/bin/bash

sudo apt install -y fonts-font-awesome

sudo mkdir /usr/share/fonts/WinFonts
sudo cp ./WinFonts/* /usr/share/fonts/WinFonts/
sudo chmod 644 /usr/share/fonts/WinFonts/*
fc-cache -f -v
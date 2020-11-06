#!/bin/bash

echo -e "\nInstall Windows Fonts? (Y/N): "

read FONTS

if [ "$FONTS" = "Y" ]; then

	echo -e "\nChecking if WinFonts exists..."

	FILE=./WinFonts
	if [[ -d "$FILE" ]]; then
		echo -e "\n$FILE exists."
	else
		echo -e "\n$FILE does not exist."
		exit
	fi

	echo -e "\nInstalling fonts"
	sudo mkdir /usr/share/fonts/WinFonts
	sudo cp ./WinFonts/* /usr/share/fonts/WinFonts/
	sudo chmod 644 /usr/share/fonts/WinFonts/*
	fc-cache --force
	sudo cp ./.local.conf /etc/fonts/.local.conf
fi
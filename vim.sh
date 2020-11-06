#!/bin/bash

echo -e "\nInstall Vim-plug? (Y/N): "

read VIMPLUG

if [ "$VIMPLUG" = "Y" ]; then
	echo -e "\nInstalling vim-plug..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo -e "\nInstall .bashrc? (Y/N): "

read VIMRC

if [ "$VIMRC" = "Y" ]; then

	echo -e "\nChecking if .vimrc exists..."

	FILE=~/.vimrc
	if [[ -f "$FILE" ]]; then
		echo -e "\n$FILE exists."

		rm ~/.vimrc
		cp ../config/.vimrc ~/.vimrc
	else
		cp ../config/.vimrc ~/.vimrc
	fi
fi
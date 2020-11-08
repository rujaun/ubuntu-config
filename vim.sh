#!/bin/bash

echo -e "\nInstall Vim-plug? (Y/N): "

read VIMPLUG

if [ "$VIMPLUG" = "Y" ]; then
	echo -e "\nInstalling vim-plug..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
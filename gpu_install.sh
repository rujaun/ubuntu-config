#!/bin/bash

sudo dpkg --add-architecture i386

sudo apt update && sudo apt dist-upgrade

echo -e "\nInstall GPU drivers (nvidia | intelamd): "

read GPU

if [ "$GPU" = "intelamd" ]; then
	echo -e "\nInstalling Intel/AMD GPU drivers"
	sudo add-apt-repository ppa:kisak/kisak-mesa
	sudo apt update && sudo apt upgrade
	sudo apt install libgl1-mesa-dri:i386
	sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386
fi

if [ "$GPU" = "nvidia" ]; then
	echo -e "\nInstalling Nvidia GPU drivers"
	sudo add-apt-repository ppa:graphics-drivers/ppa
	sudo apt update
	sudo apt install nvidia-driver-455
	sudo apt install libvulkan1 libvulkan1:i386
fi

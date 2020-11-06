#!/bin/bash

sudo dpkg --add-architecture i386

sudo apt update && sudo apt dist-upgrade

sudo apt install xterm libgl1-mesa-dri libgl1-mesa-glx libgl1-mesa-glx libglu1-mesa x11-apps x11-session-utils x11-utils x11-xkb-utils x11-xserver-utils xauth xfonts-base xfonts-utils xinit xinput xkb-data xorg-docs-core xserver-xorg xfonts-scalable x11-xfs-utils xfonts-100dpi xfonts-75dpi xorg-docs --no-install-recommends --no-install-suggests
sudo apt install arandr rxvt-unicode

echo -e "\nInstall GPU drivers (nvidia | intelamd): "

read GPU

if [ "$GPU" = "intelamd" ]; then
	echo -e "\nInstalling AMD GPU drivers"
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

#!/bin/bash

echo -e "\nEnabling TRIM scheduling for SSDs..."
sudo systemctl enable fstrim.timer

sudo apt install util-linux git vim htop curl wget neofetch lm-sensors bleachbit

echo -e "\nConfigure git for first time setup? (Y/N): "

read GIT

if [ "$GIT" = "Y" ]; then
	echo -e "\nSetting up git..."
	git config --global user.name "Rujaun Fourie"
	git config --global user.email rujaun@gmail.com
	git config --global pull.rebase false
fi

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

sudo apt install python3 python3-pip

sudo apt install ntfs-3g exfat-utils

sudo apt install bzip2 gzip lzip xz p7zip unrar zip unzip

sudo apt install partitionmanager kcolorchooser krita okular vlc ark persepolis transmission-qt firefox ktouch

sudo apt install kwallet ksshaskpass kwalletmanager libpam-kwallet5 libpam-kwallet-common signon-kwallet-extension kwalletcli

sudo tee -a /etc/apt/sources.list.d/debian-chromium.list <<EOF
deb https://deb.debian.org/debian buster main
deb https://deb.debian.org/debian buster-updates main
deb http://security.debian.org/ buster/updates main
EOF

sudo tee -a /etc/apt/preferences.d/debian-chromium.pref <<EOF
# Don't install anything other than chromium from the Debian repos
Package: *
Pin: origin "deb.debian.org"
Pin-Priority: -10

# Don't install anything other than chromium from the Debian repos
Package: *
Pin: origin "security.debian.org"
Pin-Priority: -10

# Exclude the game chromium-bsu
Package: chromium-bsu*
Pin: origin "deb.debian.org"
Pin-Priority: -10

# Exclude the game chromium-bsu
Package: chromium-bsu*
Pin: origin "security.debian.org"
Pin-Priority: -10

# Pattern includes 'chromium'
Package: chromium*
Pin: origin "deb.debian.org"
Pin-Priority: 700

# Pattern includes 'chromium'
Package: chromium*
Pin: origin "security.debian.org"
Pin-Priority: 700

# Chromium dependencies only in buster
Package: /libevent-2.1-6/ /libicu63/ /libjpeg62-turbo/ /libvpx5/
Pin: origin "deb.debian.org"
Pin-Priority: 1

# Chromium dependencies only in buster
Package: /libevent-2.1-6/ /libicu63/ /libjpeg62-turbo/ /libvpx5/
Pin: origin "security.debian.org"
Pin-Priority: 1
EOF

#sudo apt install debian-archive-keyring && \
#sudo apt-key add /usr/share/keyrings/debian-archive-keyring.gpg
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys DCC9EFBF77E11517
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 648ACFD622F3D138
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 112695A0E562B32A

sudo apt update
sudo apt install chromium

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
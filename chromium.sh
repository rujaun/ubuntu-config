#!/bin/bash

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
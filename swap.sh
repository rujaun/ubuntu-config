#!/bin/bash

echo -e "\nSWAP file size in MiB: (0 for no swap): "

read SWAP

if (( "$SWAP" > 0 )); then
	echo -e "\nCreating SWAP file:"
	cd /
	sudo dd if=/dev/zero of=swapfile bs=1M count="$SWAP" status=progress
	sudo chmod 600 swapfile
	sudo mkswap swapfile
	sudo swapon swapfile
	sudo echo "/swapfile		none	swap defaults 0 0" >> /etc/fstab
	sudo touch /etc/sysctl.d/99-swappiness.conf
	sudo echo "vm.swappiness=10" >> /etc/sysctl.d/99-swappiness.conf
else
	sudo echo "vm.swappiness=0" >> /etc/sysctl.d/99-swappiness.conf
fi
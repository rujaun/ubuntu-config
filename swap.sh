#!/bin/bash

echo -e "\nSWAP file size in MiB: (0 for no swap): "
read SWAP_SIZE

if (( "$SWAP_SIZE" > 0 )); then
	echo -e "\nCreating SWAP file:"
	cd /
	dd if=/dev/zero of=swapfile bs=1M count="$SWAP_SIZE" status=progress
	chmod 600 swapfile
	mkswap swapfile
	swapon swapfile
	echo "/swapfile		none	swap defaults 0 0" >> /etc/fstab
	touch /etc/sysctl.d/99-swappiness.conf
	echo "vm.swappiness=10" >> /etc/sysctl.d/99-swappiness.conf
else
	echo "vm.swappiness=0" >> /etc/sysctl.d/99-swappiness.conf
fi
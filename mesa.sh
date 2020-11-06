#!/bin/bash

wget https://archive.mesa3d.org//mesa-20.2.1.tar.xz
tar xf mesa-20.2.1.tar.xz
cd mesa-20.2.1
sudo apt-get build-dep mesa
autoreconf -vfi



echo -e "\nInstall GPU drivers (intel | amd): "

read GPU

if [ "$GPU" = "intel" ]; then
	./configure --prefix=/usr \
	          --enable-driglx-direct \
	          --enable-gles1 \
	          --enable-gles2 \
	          --enable-glx-tls \
	          --with-dri-driverdir=/usr/lib/dri \
	          --with-egl-platforms='drm x11' \
	          --with-dri-drivers=i965
	make
	mv lib/i965/* lib/
fi

if [ "$GPU" = "amd" ]; then
	./configure --prefix=/usr \
	          --enable-driglx-direct \
	          --enable-gles1 \
	          --enable-gles2 \
	          --enable-glx-tls \
	          --with-dri-driverdir=/usr/lib/dri \
	          --with-egl-platforms='drm x11' \
	          --with-gallium-drivers=radeonsi
	make
	sudo mv lib/gallium/* lib/
fi
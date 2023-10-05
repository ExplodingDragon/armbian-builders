#!/bin/bash
set -e
git clone --depth=1 --branch=main https://github.com/armbian/build
cd build
/compile.sh build BOARD=hinlink-h28k BRANCH=legacy BUILD_DESKTOP=no BUILD_MINIMAL=yes EXPERT=no KERNEL_CONFIGURE=no RELEASE=bookworm INSTALL_HEADERS=yes BSPFREEZE=yes 
tar -cjvf /tmp/output.tar.bz2 output/images/*.img
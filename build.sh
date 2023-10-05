#!/bin/bash
set -ex
git clone --depth=1 --branch=main https://github.com/armbian/build
cd build
./compile.sh build BOARD=hinlink-h28k BRANCH=legacy BUILD_DESKTOP=no BUILD_MINIMAL=no EXPERT=yes KERNEL_CONFIGURE=no RELEASE=bookworm
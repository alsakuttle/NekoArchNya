#!/bin/bash
# Your Only Can Build On Arch Based System


BUILD_DIR='./icelinux_x86_64/build'
OUT_DIR='./icelinux_x86_64/out'
clear
echo "==================================="
echo "       IceLinux Build Script       "
echo "==================================="
echo "- Arch : x86_64"
echo "- Building Date : $(date +%Y.%m.%d)"
echo "- Script Version : v1.0"
echo ""
echo "<https://github.com/NekoIceTeam/IceLinux>"
echo "  Copyright (c) 2021 NekoIceCream  "
echo "==================================="
echo ""
echo "       Warning Before Building"
echo "- Building Only Work On Arch Based System"
echo "- It's Take 4GB+ For Download Packages"
echo "- Need good Internet Connection"
echo ""
echo "Starting Building..."
echo "Ctrl + For Cancel"

if [ -d $OUT_DIR ]
then
else
mkdir $OUT_DIR
fi

if [ -d $BUILD_DIR ]
then
else
mkdir $BUILD_DIR
fi


sudo pacman -Syyyu --noconfirm
sudo pacman -S archiso --noconfirm
# mkarchiso -v -g 8E02DA8285638FD2 -G nekoicecream@outlook.co.id -w $BUILD_DIR -o $OUT_DIR icelinux_x86_64/
mkarchiso -v -G nekoicecream@outlook.co.id -w $BUILD_DIR -o $OUT_DIR ./icelinux_x86_64
# Copyright (c) 2021 NekoIceCream

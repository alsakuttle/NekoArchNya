#!/bin/bash
# Your Only Can Build On Arch Based System

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
sleep 10

sudo pacman -Syyyu --noconfirm
sudo pacman -S archiso --noconfirm
sudo mkdir icelinux_x86_64/iso icelinux_x86_64/work
# mkarchiso -v -g 8E02DA8285638FD2 -G nekoicecream@outlook.co.id -w icelinux_x86_64/work -o icelinux_x86_64/iso icelinux_x86_64/
mkarchiso -v -w icecream_x86_64/work -o icelinux_x86_64/iso icelinux_x86_64/
# Copyright (c) 2021 NekoIceCream

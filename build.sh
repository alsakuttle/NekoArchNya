#!/bin/bash
# Your Only Can Build On Arch Based System

sudo pacman -Syyyu
sudo pacman -S archiso --noconfirm
mkarchiso -v -w ./work -o ./out ./

# Copyright (c) 2021 NekoIceCream
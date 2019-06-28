#!/bin/bash
set -e
echo " Xserver setup"
sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"

#!/bin/bash
set -e

# you can use lscpu in the terminal to know if you have an intel or amd

echo "Run this if you see an error in your bootup screen or dmesg about microcode"

sudo pacman -S --noconfirm intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"

#!/bin/bash
set -e
sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter
systemctl enable lightdm

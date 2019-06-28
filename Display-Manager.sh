#!/bin/bash
sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter
systemctl enable lightdm

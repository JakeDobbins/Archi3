#!/bin/bash
set -e
sudo pacman -S --noconfirm xf86-video-intel libgl mesa
#sudo pacman -S --noconfirm nvidia nvidia-lts nvidia-libgl mesa
#sudo pacman -S --noconfirm xf86-video-amdgpu mesa (better check updates)
#sudo pacman -S --noconfirm virtualbox-guest-utils virtualbox-guest-modules-arch mesa mesa-libgl

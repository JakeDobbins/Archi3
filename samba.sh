#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed samba
sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf.original
sudo systemctl enable smb.service
sudo systemctl start smb.service

##Change your username here
read -p "What is your login? It will be used to add this user to smb : " choice
sudo smbpasswd -a $choice

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb

echo "################################################################"
echo "#########   samba  software installed           ################"
echo "################################################################"

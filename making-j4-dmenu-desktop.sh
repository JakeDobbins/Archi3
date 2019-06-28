#!/bin/bash
#git clone https://aur.archlinux.org/j4-dmenu-desktop-git.git
#cd j4-dmenu-desktop-git
#makepkg -si

set -e
###########################################################################

package="j4-dmenu-desktop-git"

###########################################################################
#checking if application is already installed

if pacman -Qi $package &> /dev/null; then

		echo "################################################################"
		echo "################## "$package" is already installed"
		echo "################################################################"

else

	if pacman -Qi yay &> /dev/null; then

		echo "################################################################"
		echo "######### Installing with yay"
		echo "################################################################"
		yay -S --noconfirm $package


		echo "################################################################"
		echo "#########  "$package" has been installed"
		echo "################################################################"

	else

		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		echo "!!!!!!!!!  "$package" has NOT been installed"
		echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

#!/bin/bash
useradd -m -g users -G wheel,storage,power -s /bin/bash jake
echo "Now set up the user's password!"
echo "Don't forget EDITOR=nano visudo"

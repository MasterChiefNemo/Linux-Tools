#! /bin/bash

# Author Damien Hunter (damien.hunter9@gmail.com) 
# (20/11/2019)
#
# Fedora Upgrade Tool. Upgrades to Fedora 31
# Please note, I accept no liability for any problems
# caused by this script, as I have ran it successfully.
#
# Damien Hunter damien.hunter9@gmail.com

sudo dnf upgrade --refresh -y
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=31 -y
sudo dnf system-upgrade reboot

#!/bin/bash

# Upgrade from Fedora 23 to Fedora 24. This has not been 
# tested on versions of Fedora prior to 23.
#
# Damien Hunter
# damien.hunter9@gmail.com 
# 20/7/2016

# System update
sudo dnf upgrade --refresh

# Install a dnf plugin
sudo dnf install dnf-plugin-system-upgrade

# Upgrade to Fedora 24
sudo dnf system-upgrade download --releasever=24

# System upgrade and reboot
sudo dnf system-upgrade reboot


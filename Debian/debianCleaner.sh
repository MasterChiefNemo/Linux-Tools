#!/bin/bash

# This is an auto update and upgrade tool for
# Debian based distributions.
#
# Damien HUnter (damien.hunter30@gmail.com)
echo "Performing an Update and Upgrade!"
sleep 5
apt-get -y update # System Update
apt-get -y upgrade # System Upgrade
apt-get -y dist-upgrade

echo
echo "Performing a clean up operation!"
sleep 5
apt-get remove
apt-get -y  autoremove # Removes all non-essential packages.
echo
apt-get clean # Clean up.
echo
apt-get autoclean # Additional clean up.
echo
echo "Done!"

# This shell script finds and removes all bak and log files.
# There's a C file to do this, but if you fancy a Shell script
# instead, here it is.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015
echo "Remove unnecessary log files!"
find / -name *.log -type f -delete
sleep 5

echo "Remove unnecessary bak files!"
find / -name *.log -type f -delete
echo "Done!"
sleep 5

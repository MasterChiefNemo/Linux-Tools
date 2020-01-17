#! /bin/bash
# As much as I'd love to, I won't take any responsibility
# should this script cause you any issues. You run this at
# your own risk.
#
# Damien Hunter damien.hunter9@gmail.com

echo "Starting System Update"
sudo dnf update --best --allowerasing -y
sudo dnf upgrade --best --allowerasing -y
echo "Updates and Upgrades complete..."
sleep 5

echo "Removing unnecessary files...."
sudo dnf autoremove -y
echo "Files removed"
sleep 5
echo "Complete!"

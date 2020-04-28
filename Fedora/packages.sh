#!/bin/bash

# Packages Installer
sudo dnf update -y

# Other Packages
sudo dnf install -y vlc	p7zip VirtualBox
sudo dnf install -y unzip java-openjdk
sudo dnf install -y clamav vagrant nginx

# Install a new Repository
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Flash
sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
sudo dnf install flash-plugin -y

# More
sudo dnf install gnome-tweak-tool gimp bluefish filezilla vlc dconf-editor epiphany -y

# Codecs
sudo dnf install gstreamer gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1 -y

# Remove
sudo dnf autoremove -y

# Fedy
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

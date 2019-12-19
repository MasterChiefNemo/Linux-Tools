#!/bin/bash

# Packages Installer
sudo dnf update -y

# Other Packages
sudo dnf install -y vlc	p7zip vim VirtualBox
sudo dnf install -y unzip icedtea-web java-openjdk
sudo dnf install -y clamav vagrantvnginx audacious audacity

# Install a new Repository
sudo dnf install --nogpgcheck   http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Flash
sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
sudo dnf install flash-plugin -y

# More
sudo dnf install gnome-tweak-tool gimp inkscape thunderbird bluefish filezilla vlc python-openoffice dconf-editor epiphany gnome-tweak-tool -y

# Codecs
sudo dnf install gstreamer gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1 -y

# Remove
sudo dnf remove evolution rhythmbox empathy gnome-maps -y
sudo dnf autoremove -y

# Fedy
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

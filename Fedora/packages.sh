#!/bin/bash

# Packages Installer

# Install Fedy to run Desktop Applications with a better experience
dnf update
curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer

# Other Packages
dnf install -y vlc			# Install VLC
dnf install -y unrar p7zip		# Archive Tools
dnf install -y nano			# Install Nano Editor
dnf install -y vim			# Install VIM Editor
dnf install -y unzip			# Archive Tool
dnf install -y icedtea-web java-openjdk	# Other Java Tools
dnf install -y clamav			# Anti-Virus
dnf install -y clamtv			# ClamAV GUI
dnf install -y vagrant
dnf install -y nginx
dnf install -y audacious
dnf install -y audacity
dnf install -y gnome-music
dnf install -y qbittorrent

# Install a new Repository
dnf install --nogpgcheck   http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Desktop Environments
dnf install @kde-desktop	# KDE
dnf install @xfce-desktop	# XFCE
dnf install @lxde-desktop	# LXDE
dnf install @cinnamon-desktop	# Cinnamon

# Flash
sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
sudo dnf install flash-plugin

# More
dnf install gnome-tweak-tool gimp inkscape thunderbird bluefish filezilla vlc python-openoffice
dnf install VirtualBox
dnf install dconf-editor
dnf install epiphany
dnf install gnome-tweak-tool

# Codecs
dnf install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras  gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1

# Remove
dnf remove evolution rhythmbox empathy gnome-maps -y
dnf autoremove -y

# Fedy
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

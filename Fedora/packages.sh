#!/bin/bash

# Packages Installer

# Install Fedy to run Desktop Applications with a better experience
sudo dnf update
sudo curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer

# Other Packages
sudo dnf install -y vlc				# Install VLC
sudo dnf install -y unrar p7zip			# Archive Tools
sudo dnf install -y nano			# Install Nano Editor
sudo dnf install -y vim				# Install VIM Editor
sudo dnf install -y unzip			# Archive Tool
sudo dnf install -y icedtea-web java-openjdk	# Other Java Tools
sudo dnf install -y clamav			# Anti-Virus
sudo dnf install -y clamtv			# ClamAV GUI
sudo dnf install -y vagrant
sudo dnf install -y nginx
sudo dnf install -y audacious
sudo dnf install -y audacity
sudo dnf install -y gnome-music
sudo dnf install -y qbittorrent

# Install a new Repository
dnf install --nogpgcheck   http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Desktop Environments
dnf install @kde-desktop -y		# KDE
dnf install @xfce-desktop -y		# XFCE
dnf install @lxde-desktop -y		# LXDE
dnf install @cinnamon-desktop -y	# Cinnamon

# Flash
sudo rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
sudo rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
sudo dnf install flash-plugin -y

# More
dnf install gnome-tweak-tool gimp inkscape thunderbird bluefish filezilla vlc python-openoffice -y
dnf install VirtualBox -y
dnf install dconf-editor -y
dnf install epiphany -y
dnf install gnome-tweak-tool -y

# Codecs
dnf install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras  gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1 -y

# Remove
dnf remove evolution rhythmbox empathy gnome-maps -y
dnf autoremove -y

# Fedy
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"'

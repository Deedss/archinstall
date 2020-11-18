#!/bin/bash

pacman -S xorg plasma-meta dolphin konsole spectacle yakuake fwupd pulseaudio pulseaudio-alsa pavucontrol alsa-firmware alsa-lib alsa-plugins alsa-utils gstreamer gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly playerctl volumeicon pulseaudio-bluetooth bluez bluez-libs bluez-utils blueberry cups 
cups-pdf ghostscript gsfonts gutenprint libcups system-config-printer tlp powertop avahi nss-mdns ark cryfs dolphin-plugins ffmpegthumbs gwenview kde-gtk-config kde-system-meta okular packagekit-qt5 partitionmanager awesome-terminal-fonts adobe-source-sans-pro-fonts cantarell-fonts noto-fonts ttf-bitstream-vera ttf-dejavu ttf-droid ttf-hack ttf-inconsolata ttf-liberation ttf-roboto ttf-ubuntu-font-family tamsyn-font appstream appstream-qt

# Enable display manager
systemctl enable sddm.service -f

# Enable bluetooth
systemctl enable bluetooth.service

# Enable printing
systemctl enable org.cups.cupsd.service
systemctl enable tlp.service

# Enable avahi
systemctl enable avahi-daemon.service

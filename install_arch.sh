#!/bin/bash

sudo pacman -S \
# Core functionality
xorg \
sddm \
plasma-meta \
dolphin \
konsole \
spectacle \
yakuake \
fwupd \

# Audio components
pulseaudio \
pulseaudio-alsa \
pavucontrol \
alsa-firmware \
alsa-lib \
alsa-plugins \
alsa-utils \
gstreamer \
gst-plugins-good \
gst-plugins-bad \
gst-plugins-base \
gst-plugins-ugly \
playerctl \ 
volumeicon \

# Bluetooth
pulseaudio-bluetooth \ 
bluez \
bluez-libs \
bluez-utils \
blueberry \

# Printer 
cups \ 
cups-pdf \
ghostscript \
gsfonts \ 
gutenprint \
libcups \
system-config-printer \

# Power settings
tlp \
powertop \

# Network
avahi \ 
nss-mdns \

# Kde apps
ark \ 
cryfs \ 
dolphin-plugins \
ffmpegthumbs \ 
gwenview \
kde-gtk-config \
kde-system-meta \
okular \
packagekit-qt5 \
partitionmanager \

# Fonts
awesome-terminal-fonts \
adobe-source-sans-pro-fonts \
cantarell-fonts \
noto-fonts \
ttf-bitstream-vera \
ttf-dejavu \
ttf-droid \
ttf-hack \
ttf-inconsolata \
ttf-liberation \
ttf-roboto \
ttf-ubuntu-font-family \
tamsyn-font
###############################################################################
# Enable display manager
sudo systemctl enable sddm.service -f

# Enable bluetooth
sudo systemctl enable bluetooth.service

# Enable printing
sudo systemctl enable org.cups.cupsd.service
sudo systemctl enable tlp.service
sudo systemctl enable powertop.service

# Enable avahi
sudo systemctl enable avahi-daemon.service

#!/bin/bash

####### Base System #######
pacman -S --needed base-devel linux-headers linux-firmware pacman-contrib amd-ucode xf86-video-vesa xorg-server xorg-xinit xf86-input-libinput xf86-video-amdgpu xf86-video-ati xf86-video-fbdev xorg-xkill xorg-xrandr xorg-xinput xdg-utils xdg-user-dirs accountsservice smartmontools ldns modemmanager networkmanager networkmanager-openvpn net-tools ntfs-3g nss-mdns usb_modeswitch whois ethtool openconnect openvpn rp-pppoe wireless_tools wpa_supplicant wvdial gnu-netcat iwd linux-atm ndisc6 pptpclient vpnc xl2tpd dialog dnsmasq upower htop python solid mlocate ttf-dejavu gnu-free-fonts ttf-liberation ttf-bitstream-vera ttf-ubuntu-font-family cantarell-fonts noto-fonts noto-fonts-cjk ttf-croscore ttf-carlito ttf-caladea firefox alsa-utils alsa-plugins alsa-firmware glances pulseaudio libopenraw freetype2 gst-libav gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly libdvdcss dosfstools mtools openssh wget bash-completion lsb-release adobe-source-sans-pro-fonts # tlp

# No longer use tlp due to auto-cpufreq
# systemctl enable tlp
systemctl enable avahi-daemon


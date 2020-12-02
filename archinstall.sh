#!/bin/bash

####### Base System #######
pacman -S --needed base-devel linux-headers linux-firmware pacman-contrib amd-ucode xf86-video-vesa xorg-server xorg-xinit xf86-input-libinput xf86-video-amdgpu xf86-video-ati xf86-video-fbdev xorg-xkill xorg-xrandr xorg-xinput xdg-utils xdg-users-dirs accountsservice smartmontools ldns modemmanager networkmanager networkmanager-openvpn net-tools ntfs-3g nss-mdns usb_modeswitch whois ethtool openconnect openvpn rp-pppoe wireless_tools wpa_supplicant wvdial gnu-netcat iwd linux-atm ndisc6 pptpclient vpnc xl2tpd dialog dnsmasq upower htop python solid mlocate ttf-dejavu gnu-free-fonts ttf-liberation ttf-bitstream-vera ttf-ubuntu-font-family cantarell-fonts noto-fonts noto-fonts-cjk ttf-croscore ttf-carlito ttf-caladea firefox alsa-utils alsa-plugins alsa-firmware glances pulseaudio libopenraw freetype2 gst-libav gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly libdvdcss dosfstools mtools openssh wget bash-completion lsb-release steam tlp inxi adobe-source-sans-pro-fonts
 
systemctl enable NetworkManager
systemctl enable tlp
### systemctl enable avahi-daemon

####### Desktop Environment #######
pacman -S --needed plasma sddm fwupd python-dbus discover kde-system-meta kde-utilities-meta gwenview kde-graphics-thumbnailers okular spectacle appstream appstream-qt packagekit packagekit-qt5 kdialog dolphin-plugins

systemctl enable sddm

####### Printing Setup #######
pacman -S --needed cups cups-filters cups-pdf ghostscript gsfonts foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds splix

systemctl enable org.cups.cupsd

####### Bluetooth Setup #######
pacman -S --needed bluez bluez-utils pulseaudio-qt bluez-libs

systemctl enable bluetooth

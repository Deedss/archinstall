#!/bin/bash

####### Desktop Environment #######
pacman -S --needed plasma sddm fwupd python-dbus discover kde-system-meta kde-utilities-meta gwenview kde-graphics-thumbnailers okular spectacle appstream appstream-qt packagekit packagekit-qt5 kdialog dolphin-plugins

systemctl enable sddm
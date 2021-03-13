#!/bin/bash

####### Desktop Environment #######
pacman -S --needed plasma sddm fwupd python-dbus discover kde-system-meta gwenview okular spectacle appstream appstream-qt packagekit packagekit-qt5 kdialog dolphin-plugins ark kate kcalc kdialog kfind kgpg konsole print-manager yakuake markdownpart

systemctl enable sddm

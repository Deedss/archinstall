#!/bin/bash

####### Desktop Environment #######
pacman -S --needed plasma sddm fwupd python-dbus discover kde-system-meta kde-utilities-meta gwenview okular spectacle appstream appstream-qt packagekit packagekit-qt5 kdialog dolphin-plugins kcalc kate kdialog ark filelight print-manager yakuake konsole kgpg kfind

systemctl enable sddm
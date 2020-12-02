#!/bin/bash

####### Bluetooth Setup #######
pacman -S --needed bluez bluez-utils pulseaudio-qt bluez-libs

systemctl enable bluetooth

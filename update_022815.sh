#!/bin/bash

#fix wifi issues 
sudo rmmod lib80211
sudo rmmod rtl8723be
sudo modprobe rtl8723be

#move over new i3 bin
sudo unzip i3.zip -d /

#move over nwe bash rules
sudo cp .bashrc ~/

#move over USB rules
sudo cp 77-ulogo.rules /etc/udev/rules.d/

#move over DisableTouchpad
sudo mkdir ~/Documents/Scripts
sudo cp DisableTouchpad.sh ~/Documents/Scripts
sudo cp DisableTouchpad.sh.desktop ~/.config/autostart
$SHELL

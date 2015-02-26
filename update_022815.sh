#!/bin/bash

#fix wifi issues 
sudo rmmod lib80211
sudo rmmod rtl8723be
sudo modprobe rtl8723be

#move over new i3 bin
sudo unzip i3.zip -d /
sudo cp .bashrc ~/

$SHELL

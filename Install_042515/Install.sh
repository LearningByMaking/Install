#!/bin/bash

#promtp user to set the computer name based on the sticker number
sh ChangeComputerName.sh

#unzip Basic Board Code to correct location
unzip BasicBoard.zip -d ~/
chmod 777 ~/BasicBoard

#move shortcut to desktop
cp BasicBoard.sh ~/Desktop
chmod 777 ~/Desktop/BasicBoard.sh

#unzip Basic Board Assembly to correct location
unzip BasicBoardInstructions.zip -d ~/
chmod 777 ~/BasicBoardInstructions

#unzip Tutle Logo to correct location
unzip TurtleLogo.zip -d ~/
chmod 777 ~/TurtleLogo

cd ~/BasicBoardInstructions
find . -exec chmod 777 {} \;





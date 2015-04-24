#!/bin/bash
echo -n "Enter Sticker Number (3 digits):"
read userinput

NewHostName="lbym$userinput"

#change hostname file
echo $NewHostName > /etc/hostname

#change hosts file
echo "127.0.1.1 $NewHostName" > hosts
sed '/^127.0.1.1/ d' /etc/hosts >> hosts
chmod 666 hosts
mv hosts /etc/hosts
service hostname restart
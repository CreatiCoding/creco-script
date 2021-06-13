#!/bin/bash



## INSTALL
sudo apt install net-tools


sudo ifconfig wlan0 up

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi
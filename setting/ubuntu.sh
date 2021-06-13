#!/bin/bash



## INSTALL
sudo apt install net-tools -y
sudo apt install wpasupplicant -y

wpa_passphrase creco-5 creco1203 | sudo tee /etc/wpa_supplicant.conf


sudo ifconfig wlan0 up

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi

echo "end"
#!/bin/bash



## INSTALL
sudo apt install net-tools -y
sudo apt install wpasupplicant -y

if [ ! -f /etc/wpa_supplicant.conf ]; then
    echo "File not found!"
    wpa_passphrase creco-5 creco1203 | sudo tee /etc/wpa_supplicant.conf
    echo "File /etc/wpa_supplicant.conf generated"
fi

sudo ifconfig wlan0 up

sudo wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlp4s0

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi

echo "end"
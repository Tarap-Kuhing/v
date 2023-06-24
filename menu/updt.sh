#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
cd /usr/bin
rm - rf menu
wget -O menu2 "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu2.sh"
chmod +x menu2
menu

#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo "Silahkan Masukin Link Backupnya"
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
cp -r backup /var/lib/
cp -r xray/backup /etc/
cp -r per/backup /etc/
cp -r slowdns/backup /etc/
cp -r public_html/backup /etc/
cp -r html /var/www/
cp crontab /etc/

rm -rf /root/backup
rm -f backup.zip
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu

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
echo "${BLUE} Silahkan Masukin Link ID Backup Kamu ${NC}"
read -rp "Link ID: " -e id
wget -O backup.zip "https://drive.google.com/u/4/uc?id=${id}&export=download"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
cp group /etc/
cp shadow /etc/
cp gshadow /etc/
#cp -r wireguard /etc/
cp chap-secrets /etc/ppp/
cp passwd1 /etc/ipsec.d/passwd
cp ss.conf /etc/shadowsocks-libev/ss.conf
cp -r var/lib/
echo "${BLUE} Proses Restore file ${NC}"
cp -r per /etc/
echo "${BLUE} Proses Restore Xray ${NC}"
cp -r xray /etc/
echo "${BLUE} Proses Restore Slowdns ${NC}"
cp -r slowdns /etc/
cp -r trojan-go /etc/
#cp -r shadowsocksr /usr/local/
cp -r public_html /home/vps/
cp -r cron.d /etc/
cp -r crontab /etc/
systemctl restart xray
echo "${BLUE} Proses Restore SELESAI !!!! ${NC}"
rm -rf /root/backup
rm -f backup.zip
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu

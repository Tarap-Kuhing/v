#!/bin/bash
clear
red='\e[1;31m'
green='\e[1;32m'
yell='\e[1;33m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

if [[ -e /etc/debian_version ]]; then
	source /etc/os-release
	OS=$ID # debian or ubuntu
elif [[ -e /etc/centos-release ]]; then
	source /etc/os-release
	OS=centos
fi

echo "Tools install...!"
echo "Progress..."
sleep 0.5

sudo apt update -y
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install netfilter-persistent -y
sudo apt-get remove --purge ufw firewalld -y 
sudo apt-get remove --purge exim4 -y 


sudo apt install -y screen curl jq bzip2 gzip coreutils rsyslog iftop \
 htop zip unzip net-tools sed gnupg gnupg1 \
 bc sudo apt-transport-https build-essential dirmngr libxml-parser-perl neofetch screenfetch git lsof \
 openssl openvpn easy-rsa fail2ban tmux \
 stunnel4 vnstat squid3 \
 dropbear  libsqlite3-dev \
 socat cron bash-completion ntpdate xz-utils sudo apt-transport-https \
 gnupg2 dnsutils lsb-release chrony

curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
apt-get install -y nodejs

/etc/init.d/vnstat restart
wget https://humdi.net/vnstat/vnstat-2.8.tar.gz
tar -xvzf vnstat-2.8.tar.gz
cd vnstat-2.8
./configure --prefix=/usr --sysconfdir=/etc >/dev/null 2>&1
sudo make
sudo make install
vnstat -v
sudo cp -v examples/systemd/vnstat.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable vnstat sudo systemctl start vnstat
rm -f /root/vnstat-2.8.tar.gz >/dev/null 2>&1
rm -rf /root/vnstat-2.8 >/dev/null 2>&1

sudo apt install -y libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev libcap-ng-utils libselinux1-dev libcurl4-nss-dev flex bison make libnss3-tools libevent-dev xl2tpd pptpd

yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
yellow "Dependencies successfully installed..."
sleep 1
clear


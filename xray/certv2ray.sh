#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Tarap-Kuhing
# //	Dscription: Xray Menu Management
# //	email: merahjambo@gmail.com
# //  telegram: https://t.me/Baung2012
# //====================================================
# // font color configuration | TARAP KUHING AUTOSCRIPT
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
Font="\033[0m"
gray="\e[1;30m"
total_ram=$(grep "MemTotal: " /proc/meminfo | awk '{ print $2}')
totalram=$(($total_ram / 1024))
MYIP=$(curl -sS ipv4.icanhazip.com)
LAST_DOMAIN="$(cat /etc/xray/domain)"
DOMAIN="$(cat /etc/xray/domain)"
NS="$(cat /etc/xray/dns)"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }


systemctl stop nginx
    STOPWEBSERVER=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
    systemctl stop $STOPWEBSERVER
    echo -e "${GREEN}--->${NC}     Starting renew cert "
    sleep 2
    echo -e "${GREEN}--->$NC     Getting acme for cert"
    /root/.acme.sh/acme.sh --upgrade --auto-upgrade >/dev/null 2>&1
    /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt >/dev/null 2>&1
    /root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256 >/dev/null 2>&1
    /.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc >/dev/null 2>&1
    echo -e "${GREEN}--->${NC}     Renew cert done "
    sed -i "s/${LAST_DOMAIN}/${domain}/g" /etc/nginx/conf.d/nginx.conf >/dev/null 2>&1
    sed -i "s/${LAST_DOMAIN}/${domain}/g" /etc/public_html/index.html >/dev/null 2>&1
    cat /etc/xray/xray.crt /etc/xray/xray.key >/dev/null 2>&1
    systemctl daemon-reload >/dev/null 2>&1
    systemctl reload server >/dev/null 2>&1
    systemctl reload client >/dev/null 2>&1

    systemctl reload nginx >/dev/null 2>&1
    systemctl restart xray >/dev/null 2>&1
    sleep 2
    echo ""
    read -n 1 -s -r -p "Press any key to back on menu"
    menu

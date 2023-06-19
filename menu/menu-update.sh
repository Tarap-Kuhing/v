#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
BURIQ () {
    curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/kuhing/ip/main/vps | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
yellow='\033[0;33m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
clear
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/Tarap-Kuhing/vn/main/versi )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/Tarap-Kuhing/vn/main/versi | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
rm -rf tes
rm -rf addip
rm -rf add-host
rm -rf menu
rm -rf add-ssh
rm -rf trial
rm -rf maxisdigi
rm -rf del-ssh
rm -rf member
rm -rf delete
rm -rf cek-ssh
rm -rf restart
rm -rf speedtest
rm -rf about
rm -rf autokill
rm -rf tendang
rm -rf ceklim
rm -rf ram
rm -rf renew-ssh
rm -rf clear-log
rm -rf change-port
rm -rf restore
rm -rf port-ovpn
rm -rf port-ssl
rm -rf port-squid
rm -rf port-websocket
rm -rf wbmn
rm -rf xp
rm -rf kernel-updt
rm -rf user-list
rm -rf user-lock
rm -rf user-unlock
rm -rf user-password
rm -rf antitorrent
rm -rf cfa
rm -rf cfd
rm -rf cfp
rm -rf swap
rm -rf check-sc
rm -rf ssh
rm -rf autoreboot
rm -rf bbr
rm -rf port-ohp
rm -rf rclone
rm -rf panel-domain
rm -rf dns
rm -rf nf

rm -rf update
rm -rf run-update
rm -rf message-ssh
rm -rf change-port
rm -rf system
rm -rf menu
rm -rf add-host
rm -rf check-sc
rm -rf cert
rm -rf trojaan
rm -rf xraay
rm -rf xp
rm -rf port-xray
rm -rf themes
rm -rf autobackup
rm -rf backup
rm -rf bckp
rm -rf restore
rm -rf ins-xray
rm -rf running
rm -rf m-backup
rm -rf api
rm -rf bot
clear
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/Tarap-Kuhing/vn/main/update/run-update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
rm -rf menu
rm -rf m-bot
rm -rf menu-trial
rm -rf menu-vmess
rm -rf menu-vless
rm -rf running
rm -rf clearcache
rm -rf menu-trgo
rm -rf menu-trojan
rm -rf menu-ssh
rm -rf usernew
rm -rf trial
rm -rf renew
rm -rf hapus
rm -rf cek
rm -rf member
rm -rf delete
rm -rf autokill
rm -rf ceklim
rm -rf tendang
rm -rf menu-set
rm -rf menu-domain
rm -rf add-host
rm -rf port-change
rm -rf certv2ray
rm -rf menu-webmin
rm -rf speedtest
rm -rf about
rm -rf auto-reboot
rm -rf restart
rm -rf bw
rm -rf port-ssl
rm -rf port-ovpn
rm -rf xp
rm -rf acs-set
rm -rf sshws
rm -rf status
rm -rf menu-bckp
rm -rf backup
rm -rf restore
rm -rf jam
rm -rf add-ws
rm -rf trialvmess
rm -rf renew-ws
rm -rf del-ws
rm -rf cek-ws
rm -rf add-vless
rm -rf trialvless
rm -rf renew-vless
rm -rf del-vless
rm -rf cek-vless
rm -rf add-tr
rm -rf trialtrojan
rm -rf del-tr
rm -rf renew-tr
rm -rf cek-tr
rm -rf addtrgo
rm -rf trialtrojango
rm -rf deltrgo
rm -rf renewtrgo
rm -rf cektrgo

cd /usr/bin
wget -O /usr/bin/ menu "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -O /usr/bin/ m-bot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/m-bot.sh" && chmod +x /usr/bin/m-bot
wget -O /usr/bin/ menu-trial "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trial.sh" && chmod +x /usr/bin/menu-trial
wget -O /usr/bin/ menu-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -O /usr/bin/ menu-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -O /usr/bin/ running "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/running.sh" && chmod +x /usr/bin/running
wget -O /usr/bin/ clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/clearcache.sh" && chmod +x /usr/bin/clearcache
wget -O /usr/bin/ menu-trgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trgo.sh" && chmod +x /usr/bin/menu-trgo
wget -O /usr/bin/ menu-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -O /usr/bin/ menu-ssh "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -O /usr/bin/ usernew "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/usernew.sh" && chmod +x /usr/bin/usernew
wget -O /usr/bin/ trial "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/trial.sh" && chmod +x /usr/bin/trial
wget -O /usr/bin/ renew "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/renew.sh" && chmod +x /usr/bin/renew
wget -O /usr/bin/ hapus "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/hapus.sh" && chmod +x /usr/bin/hapus
wget -O /usr/bin/ cek "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/cek.sh" && chmod +x /usr/bin/cek
wget -O /usr/bin/ member "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/member.sh" && chmod +x /usr/bin/member
wget -O /usr/bin/ delete "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/delete.sh" && chmod +x /usr/bin/delete
wget -O /usr/bin/ autokill "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/autokill.sh" && chmod +x /usr/bin/autokill
wget -O /usr/bin/ ceklim "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/ceklim.sh" && chmod +x /usr/bin/ceklim
wget -O /usr/bin/ tendang "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/tendang.sh" && chmod +x /usr/bin/tendang
wget -O /usr/bin/ menu-set "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -O /usr/bin/ menu-domain "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-domain.sh" && chmod +x /usr/bin/menu-domain
wget -O /usr/bin/ add-host "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/add-host.sh" && chmod +x /usr/bin/add-host
wget -O /usr/bin/ port-change "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-change.sh" && chmod +x /usr/bin/port-change
wget -O /usr/bin/ certv2ray "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/certv2ray.sh" && chmod +x /usr/bin/certv2ray
wget -O /usr/bin/ menu-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-webmin.sh" && chmod +x /usr/bin/menu-webmin
wget -O /usr/bin/ speedtest "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/speedtest_cli.py" && chmod +x /usr/bin/speedtest
wget -O /usr/bin/ about "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/about.sh" && chmod +x /usr/bin/about
wget -O /usr/bin/ auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot
wget -O /usr/bin/ restart "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/restart.sh" && chmod +x /usr/bin/restart
wget -O /usr/bin/ bw "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/bw.sh" && chmod +x /usr/bin/bw
wget -O /usr/bin/ port-ssl "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ssl.sh" && chmod +x /usr/bin/port-ssl
wget -O /usr/bin/ port-ovpn "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ovpn.sh" && chmod +x /usr/bin/port-ovpn
wget -O /usr/bin/ xp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/xp.sh" && chmod +x /usr/bin/xp
wget -O /usr/bin/ acs-set "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/acs-set.sh" && chmod +x /usr/bin/acs-set
wget -O /usr/bin/ sshws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/sshws.sh" && chmod +x /usr/bin/sshws
wget -O /usr/bin/ status "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/status.sh" && chmod +x /usr/bin/status
wget -O /usr/bin/ menu-bckp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-bckp.sh" && chmod +x /usr/bin/m-backup
wget -O /usr/bin/ backup "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/backup.sh" && chmod +x /usr/bin/backup
wget -O /usr/bin/ restore "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/restore.sh" && chmod +x /usr/bin/restore
wget -O /usr/bin/ jam "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/jam.sh" && chmod +x /usr/bin/jam
wget -O /usr/bin/ add-ws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-ws.sh" && chmod +x /usr/bin/add-ws
wget -O /usr/bin/ trialvmess "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialvmess.sh" && chmod +x /usr/bin/trialvmess
wget -O /usr/bin/ renew-ws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renew-ws.sh" && chmod +x /usr/bin/renew-ws
wget -O /usr/bin/ del-ws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/del-ws.sh" && chmod +x /usr/bin/del-ws
wget -O /usr/bin/ cek-ws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cek-ws.sh" && chmod +x /usr/bin/cek-ws
wget -O /usr/bin/ add-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-vless.sh" && chmod +x /usr/bin/add-vless
wget -O /usr/bin/ trialvless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialvless.sh" && chmod +x /usr/bin/trialvless
wget -O /usr/bin/ renew-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renew-vless.sh" && chmod +x /usr/bin/renew-vless
wget -O /usr/bin/ del-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/del-vless.sh" && chmod +x /usr/bin/del-vless
wget -O /usr/bin/ cek-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cek-vless.sh" && chmod +x /usr/bin/cek-vless
wget -O /usr/bin/ add-tr "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-tr.sh" && chmod +x /usr/bin/add-tr
wget -O /usr/bin/ trialtrojan "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialtrojan.sh" && chmod +x /usr/bin/trialtrojan
wget -O /usr/bin/ del-tr "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/del-tr.sh" && chmod +x /usr/bin/del-tr
wget -O /usr/bin/ renew-tr "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renew-tr.sh" && chmod +x /usr/bin/renew-tr
wget -O /usr/bin/ cek-tr "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cek-tr.sh" && chmod +x /usr/bin/cek-tr
wget -O /usr/bin/ addtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/addtrgo.sh" && chmod +x /usr/bin/addtrgo
wget -O /usr/bin/ trialtrojango "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialtrojango.sh" && chmod +x /usr/bin/trialtrojango
wget -O /usr/bin/ deltrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/deltrgo.sh" && chmod +x /usr/bin/deltrgo
wget -O /usr/bin/ renewtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renewtrgo.sh" && chmod +x /usr/bin/renewtrgo
wget -O /usr/bin/ cektrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cektrgo.sh" && chmod +x /usr/bin/cektrgo
chmod +x menu
chmod +x m-bot
chmod +x menu-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokill
chmod +x ceklim
chmod +x tendang
chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw
chmod +x port-ssl
chmod +x port-ovpn
chmod +x xp
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-bckp
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x add-ws
chmod +x trialvmess
chmod +x renew-ws
chmod +x del-ws
chmod +x cek-ws
chmod +x add-vless
chmod +x trialvless
chmod +x renew-vless
chmod +x del-vless
chmod +x cek-vless
chmod +x add-tr
chmod +x trialtrojan
chmod +x del-tr
chmod +x renew-tr
chmod +x cek-tr
chmod +x addtrgo
chmod +x trialtrojango
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/Tarap-Kuhing/v/main/versi )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
update
;;
y)
clear
menu
;;
*)
clear
echo -e "\e[1;31mPlease Enter Option 1-2 or x & y Only..,Try again, Thank You..\e[0m"
sleep 2
menu-update
;;
esac

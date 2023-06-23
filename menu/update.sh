#!/bin/bash 
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q /usr/bin/ menu-update "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-update.sh"
wget -q /usr/bin/ update "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/update.sh"
wget -q /usr/bin/ menu "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu.sh"
wget -q /usr/bin/ m-bot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/m-bot.sh"
wget -q /usr/bin/ m-ip "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/m-ip.sh"
wget -q /usr/bin/ menu-trial "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trial.sh"
wget -q /usr/bin/ menu-vmess "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vmess.sh"
wget -q /usr/bin/ menu-vless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-vless.sh"
wget -q /usr/bin/ menu-ssws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-ssws.sh"
wget -q /usr/bin/ running "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/running.sh"
wget -q /usr/bin/ clearcache "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/clearcache.sh"
wget -q /usr/bin/ menu-trgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trgo.sh"
wget -q /usr/bin/ menu-trojan "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-trojan.sh"
wget -q /usr/bin/ menu-ssh "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-ssh.sh"
wget -q /usr/bin/ menu-set "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-set.sh"
wget -q /usr/bin/ menu-domain "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-domain.sh"
wget -q /usr/bin/ add-host "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/add-host.sh"
wget -q /usr/bin/ port-change "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-change.sh"
wget -q /usr/bin/ certv2ray "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/certv2ray.sh"
wget -q -O /usr/bin/ menu-webmin "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-webmin.sh"
wget -q -O /usr/bin/ speedtest "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/speedtest_cli.py"
wget -q -O /usr/bin/ about "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/about.sh"
wget -q -O /usr/bin/ auto-reboot "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/auto-reboot.sh"
wget -q -O /usr/bin/ restart "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/restart.sh"
wget -q -O /usr/bin/ bw "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/bw.sh"
wget -q -O /usr/bin/ port-ssl "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ssl.sh"
wget -q -O /usr/bin/ port-ovpn "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/port/port-ovpn.sh"
wget -q -O /usr/bin/ xp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/xp.sh"
wget -q -O /usr/bin/ acs-set "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/acs-set.sh"
wget -q -O /usr/bin/ sshws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/sshws.sh"
wget -q -O /usr/bin/ status "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/status.sh"
wget -q -O /usr/bin/ menu-backup "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-backup.sh"
wget -q -O /usr/bin/ backup "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/backup.sh"
wget -q -O /usr/bin/ restore "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/backup/restore.sh"
wget -q -O /usr/bin/ jam "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/jam.sh"
wget -q -O /usr/bin/ trialvmess "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialvmess.sh"
wget -q -O /usr/bin/ trialvless "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialvless.sh"
wget -q -O /usr/bin/ trialtrojan "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialtrojan.sh"
wget -q -O /usr/bin/ addtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/addtrgo.sh"
wget -q -O /usr/bin/ trialtrojango "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/trialtrojango.sh"
wget -q -O /usr/bin/ deltrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/deltrgo.sh"
wget -q -O /usr/bin/ renewtrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/renewtrgo.sh"
wget -q -O /usr/bin/ cektrgo "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/cektrgo.sh"
wget -q -O /usr/bin/ cf "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/ssh/cf.sh"
wget -q -O /usr/bin/ menu-bckp "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/menu/menu-bckp.sh"
wget -q -O /usr/bin/ add-ssws "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-ssws.sh"
wget -q -O /usr/bin/ add-v2ray "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-v2ray.sh"
wget -q -O /usr/bin/ add-ns "https://raw.githubusercontent.com/Tarap-Kuhing/v/main/xray/add-ns.sh"


chmod +x menu-update
chmod +x update
chmod +x m-ip
chmod +x menu
chmod +x m-bot
chmod +x menu-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x menu-ssws
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x menu-ssh
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
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x trialvmess
chmod +x trialvless
chmod +x trialtrojan
chmod +x addtrgo
chmod +x trialtrojango
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x cf
chmod +x menu-bckp
chmod +x add-ssws
chmod +x add-v2ray
chmod +x add-ns
echo -e "${tyblue}[INFO] Downloading Update File Selesai...."
sleep 5
menu

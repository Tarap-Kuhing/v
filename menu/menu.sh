#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
################################################################
BURIQ () {
    curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/ip/main/vps > /root/tmp
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
Name=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/ip/main/vps | grep $MYIP | awk '{print $2}')
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
    IZIN=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/ip/main/vps | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/ip/main/vps | grep $MYIP | awk '{print $3}')
fi
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2
# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"

# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"


# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
export sem=$( curl -sS https://raw.githubusercontent.com/Tarap-Kuhing/v/main/versi )
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
clear
clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INFORMASI VPS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "${BIYellow}□ Server Uptime       = ${GREEN}$( uptime -p  | cut -d " " -f 2-10000 ) ${NC}"
echo -e "${BIYellow}□ Current Time        = ${GREEN}$( date -d "0 days" +"%d-%m-%Y | %X" )${NC}"
echo -e "${BIYellow}□ Operating System    = ${GREEN}$( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )${NC}"
echo -e "${BIYellow}□ Current Domain      = ${GREEN}$( cat /etc/xray/domain )${NC}"
echo -e "${BIYellow}□ NS Domain           = ${GREEN}$( cat /etc/xray/dns )${NC}"
echo -e "${BIYellow}□ Jumlah Ram          = ${GREEN}${totalram}MB"
echo -e "${BIYellow}□ CPU Usage           = $cpu_usage"
echo -e "${BIYellow}□ Clients Name        = ${GREEN}${Name}${NC}"
echo -e "${BIYellow}□ Expired Script VPS  = ${GREEN}${Exp}${NC}"
echo -e "${BIYellow}□ Time Reboot VPS     = 00:00 ${GREEN}( Jam 12 Malam )${NC}"
echo -e "${BIYellow}□ WHATSAPP            = { 085754292950 }${NC}"
echo -e "${BIYellow}□ AutoScript By T.K.T = ${GREEN}( TARAP KUHING TUNNELING)${NC}"

echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan} │                  ${BIWhite}${UWhite}TARAP KUHING TUNELING${NC}"
echo -e "${BICyan} │"
echo -e " ${BICyan}│  ${BICyan}Use Core        :  ${BIPurple}XRAY${NC}"
echo -e " ${BICyan}│  ${BICyan}IP-VPS          :  ${BIYellow}$IPVPS${NC}"
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"

echo -e "${GREEN}JANGAN LUPA KAWAN TETAP SLALU BERSYUKUR KEADAAN APAPUN${NC}" 

echo -e "${GREEN}┌──────────────────────────────────────────────────┐${NC}" 
echo -e "${GREEN}│  \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN $NC" 
echo -e "${GREEN}│  \033[0m ${Blue} $ssh1        $vma           $vla          $tra   $NC" 
echo -e "${GREEN}└──────────────────────────────────────────────────┘${NC}" 
  
echo -e "     ${BICyan} SSH ${NC}: $ressh"" ${BICyan} NGINX ${NC}: $resngx"" ${BICyan}  XRAY ${NC}: $resv2r"" ${BICyan} TROJAN ${NC}: $resv2r"
echo -e "   ${BICyan}     STUNNEL ${NC}: $resst" "${BICyan} DROPBEAR ${NC}: $resdbr" "${BICyan} SSH-WS ${NC}: $ressshws"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}|    [${BIWhite}01${BICyan}] SSH     ${BICyan}[${BIYellow}Menu${BICyan}]${NC}"    "     ${BICyan}[${BIWhite}06${BICyan}] TRIALL    ${BICyan}[${BIYellow}Menu${BICyan}]${NC}" "${BICyan}   │"
echo -e " ${BICyan}|    [${BIWhite}02${BICyan}] VMESS   ${BICyan}[${BIYellow}Menu${BICyan}]${NC}" "     ${BICyan}[${BIWhite}07${BICyan}] BACKUP    ${BICyan}[${BIYellow}Menu${BICyan}]${NC}" "${BICyan}   │"
echo -e " ${BICyan}|    [${BIWhite}03${BICyan}] VLESS   ${BICyan}[${BIYellow}Menu${BICyan}]${NC}"  "     ${BICyan}[${BIWhite}08${BICyan}] RENEW NS SLOWDNS      ${NC}" "${BICyan}│"
echo -e " ${BICyan}|    [${BIWhite}04${BICyan}] TROJAN  ${BICyan}[${BIYellow}Menu${BICyan}]${NC}" "     ${BICyan}[${BIWhite}09${BICyan}] RUNNING             │"
echo -e " ${BICyan}|    [${BIWhite}05${BICyan}] SETING  ${BICyan}[${BIYellow}Menu${BICyan}]${NC}"  "     ${BICyan}[${BIWhite}10${BICyan}] SET REBOOT${BICyan}[${BIYellow}Menu${BICyan}]${NC}" "${BICyan}   │${NC}"
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e "${BICyan}                  MENU TAMBAHAN${NC} "
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}|    [${BIWhite}11${BICyan}] BOT TELEGRAM${NC} "
echo -e " ${BICyan}|    [${BIWhite}12${BICyan}] REGISTRASI IPVPS BARU${NC} "
echo -e " ${BICyan}|    [${BIWhite}13${BICyan}] CLEAR SAMPAH${NC} "
echo -e " ${BICyan}|    [${BIWhite}14${BICyan}] UPDATE SCRIPT ${BICyan}[${BIYellow}TKT${BICyan}]${NC} "
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan} │$NC ${BICyan}HARI ini${NC}: ${red}$ttoday$NC ${BICyan}KEMARIN${NC}: ${red}$tyest$NC ${BICyan}BULAN${NC}: ${red}$tmon$NC |$NC"
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}┌─────────────────────────────────────┐${NC}"
echo -e " ${BICyan}│  Version      ${NC} : ${sem} Last Update"
echo -e " ${BICyan}│  User       ${NC}   :\033[1;36m ${Name} \e[0m"
echo -e " ${BICyan}│  Day Expired${NC}   : ${Exp}"
echo -e " ${BICyan}└─────────────────────────────────────┘${NC}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; menu-set ;;
6) clear ; menu-trial ;;
7) clear ; menu-backup ;;
8) clear ; addhost-slwdns ;;
9) clear ; running ;;
10) clear ; jam ;;
11) clear ; m-bot ;;
12) clear ; m-ip ;;
13) clear ; clearcache ;;
14) clear ; menu-update ;;
15) clear ; m-sshovpn ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac

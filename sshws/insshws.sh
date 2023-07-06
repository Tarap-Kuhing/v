#!/bin/bash
# Mod by Tarap Kuhing Tunneling
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
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/Tarap-Kuhing/v/main/sshws/dropbear-ws
chmod +x /usr/local/bin/ws-dropbear

# Installing Service
cat > /etc/systemd/system/ws-dropbear.service << END
[Unit]
Description=Python Proxy Mod By T A R A P - K U H I N G
Documentation=https://t.me/@Baung2012
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ws-dropbear
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

wget -O /usr/local/bin/ws-openvpn https://raw.githubusercontent.com/Tarap-Kuhing/v/main/sshws/ws-openvpn
chmod +x /usr/local/bin/ws-openvpn

# Installing Service
cat > /etc/systemd/system/ws-openvpn.service << END
[Unit]
Description=Python Proxy Mod By T A R A P - K U H I N G
Documentation=https://t.me/@Baung2012
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ws-openvpn
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable ws-openvpn.service
systemctl restart ws-openvpn.service

wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/Tarap-Kuhing/v/main/sshws/ws-stunnel
chmod +x /usr/local/bin/ws-stunnel

# Installing Service
cat > /etc/systemd/system/ws-stunnel.service << END
[Unit]
Description=Python Proxy Mod By T A R A P - K U H I N G
Documentation=https://t.me/@Baung2012
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/ws-stunnel
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

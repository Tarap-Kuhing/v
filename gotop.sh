#!/bin/bash
### Tambahan

print_install "Memasang modul tambahan"
wget -O /usr/sbin/speedtest "${REPO}bin/speedtest" >/dev/null 2>&1
chmod +x /usr/sbin/speedtest

# > pasang gotop
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
curl -sL "$gotop_link" -o /tmp/gotop.deb
dpkg -i /tmp/gotop.deb

# > pasang glow
glow_base="$(curl -s https://api.github.com/repos/charmbracelet/glow/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
glow_latest="https://github.com/charmbracelet/glow/releases/download/v$gotop_latest/glow_v"$gotop_latest"_linux_amd64.deb"
curl -sL "$glow_latest"
chmod +x /usr/sbin/gotop

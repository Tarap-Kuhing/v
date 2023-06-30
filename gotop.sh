#!/bin/bash

# > pasang gotop
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
curl -sL "$gotop_link"

# > pasang glow
glow_base="$(curl -s https://api.github.com/repos/charmbracelet/glow/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
glow_latest="https://github.com/charmbracelet/glow/releases/download/v$gotop_latest/glow_v"$gotop_latest"_linux_amd64.deb"
curl -sL "$glow_latest"

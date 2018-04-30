#!/bin/sh

pkgs=""
pkgs="$pkgs net-tools dnsutils wireless-tools wpasupplicant whois"
pkgs="$pkgs xorg i3 p7zip-full firefox-esr curl sudo ranger tmux bc alsa-utils"
pkgs="$pkgs vim-nox git jq"
pkgs="$pkgs xclip scrot feh python-pip"

apt-get install "$pkgs"

pip install mackup

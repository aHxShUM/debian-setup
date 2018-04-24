#!/bin/sh

apt-get install \
  vim \
  xorg \
  i3 \
  p7zip-full \
  net-tools \
  dnsutils \
  wireless-tools \
  wpasupplicant \
  git \
  firefox-esr \
  curl \
  sudo \
  alsa-utils \
  tree \
  whois \
  ranger \
  tmux \
  bc \
  jq

# Clipboard manager
# list : https://wiki.archlinux.org/index.php/clipboard
# choices : copyq, xclip, xcopy, clipit, xsel
apt-get install xclip

# Screenshot
apt-get install scrot

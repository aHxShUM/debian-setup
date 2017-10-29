#!/bin/sh

apt-get install \
  vim \
  xorg \
  i3 \
  p7zip-full \
  net-tools \
  dnsutils \
  wireless-tools \
  wpaspplicant \
  git \
  firefox-esr \
  curl \
  sudo \
  alsa-utils

# add to sudoer
adduser <user> sudo

# Clipboard manager
# list : https://wiki.archlinux.org/index.php/clipboard
# choices : copyq, xclip, xcopy, clipit, xsel
apt-get install xsel

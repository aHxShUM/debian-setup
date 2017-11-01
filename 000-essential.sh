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
  alsa-utils \
  tree \
  whois

# add to sudoer
adduser <user> sudo

# Clipboard manager
# list : https://wiki.archlinux.org/index.php/clipboard
# choices : copyq, xclip, xcopy, clipit, xsel
apt-get install xsel

# Hibernate
apt-get install uswsusp

# Input method
# choices : ibus, scim, fcitx
apt-get install ibus-cangjie

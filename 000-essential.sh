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
  sudo

# add to sudoer
adduser <user> sudo

# Clipboard manager
# 
# Choices : copyq, xclip, xcopy, clipit, xsel
apt-get install xsel

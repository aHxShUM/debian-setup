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
apt-get install copyq

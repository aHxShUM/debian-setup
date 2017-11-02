#!/bin/sh

# Fonts
apt-get install \
  fonts-arphic-ukai \
  fonts-arphic-uming \
  fonts-ipafont-mincho \
  fonts-ipafont-gothic \
  fonts-unfonts-core

# Input method
# choices : ibus, scim, fcitx
apt-get install ibus-cangjie

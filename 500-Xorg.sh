#!/bin/sh

#
# DPMS
#   https://wiki.archlinux.org/index.php/Display_Power_Management_Signaling#Modifying_DPMS_and_screensaver_settings_using_xset
#

echo 'xset r rate 250 50
xset s off
xset dpms 0 0 0

. /etc/X11/Xsession
' | tee ~/.xinitrc

echo '*metaSendsEscape: true
*altSendsEscape: true
*eightBitInput: false
' | tee ~/.Xresources

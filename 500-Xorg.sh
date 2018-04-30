#!/bin/sh

#
# DPMS
#   https://wiki.archlinux.org/index.php/Display_Power_Management_Signaling#Modifying_DPMS_and_screensaver_settings_using_xset
#

tee ~/.xinitrc << EOF
xset r rate 250 50
xset s off
xset dpms 0 0 0

. /etc/X11/Xsession
EOF


tee ~/.Xresources << EOF
*metaSendsEscape: true
*altSendsEscape: true
*eightBitInput: false

*translations: #override \n\\
        Ctrl Shift <Key>C: copy-selection(CLIPBOARD) \n\\
        Ctrl Shift <Key>V: insert-selection(CLIPBOARD)

! *vt100*faceName: NotoSerif Nerd Font Mono
! *vt100*faceSize: 10

XTerm*termName: xterm-256color
EOF

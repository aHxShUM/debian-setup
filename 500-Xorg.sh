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

echo 'XTerm*metaSendsEscape: true
XTerm*altSendsEscape: true
XTerm*eightBitInput: false

XTerm*vt100*translations: #override \n\
	Ctrl Shift <Key>C: copy-selection(CLIPBOARD) \n\
	Ctrl Shift <Key>V: insert-selection(CLIPBOARD)

! *vt100*faceName: NotoSerif Nerd Font Mono
! *vt100*faceSize: 10

XTerm*termName: xterm-256color
' | tee ~/.Xresources

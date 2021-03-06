#!/bin/sh

#
# DPMS
#   https://wiki.archlinux.org/index.php/Display_Power_Management_Signaling#Modifying_DPMS_and_screensaver_settings_using_xset
#

tee ~/.xinitrc << EOF
xset r rate 250 50
xset s off
xset dpms 0 0 0

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3
EOF

tee ~/.Xresources << 'EOF'
xterm*termName: xterm-256color
xterm*metaSendsEscape: true
xterm*altSendsEscape: true
! xterm*eightBitInput: false

xterm*translations: #override \n\
        Ctrl Shift <Key>C: copy-selection(CLIPBOARD) \n\
        Ctrl Shift <Key>V: insert-selection(CLIPBOARD)

! xterm*faceName: NotoSerif Nerd Font Mono
! xterm*faceSize: 10
xterm*background: black
xterm*foreground: white
EOF

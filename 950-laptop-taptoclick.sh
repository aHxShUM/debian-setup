#!/bin/sh

echo 'Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Driver "libinput"
    Option "Tapping" "on"
EndSection
' | tee /etc/X11/xorg.conf.d/40-libinput.conf

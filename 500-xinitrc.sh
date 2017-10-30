#!/bin/sh

echo 'xset r rate 250 50
. /etc/X11/Xsession' | tee ~/.xinitrc

#!/bin/sh

echo 'xset r rate 250 50
exec i3' | tee ~/.xinitrc

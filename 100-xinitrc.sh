#!/bin/sh

cat >> ~/.xinitrc << EOT
xset r rate 250 50
exec i3
EOT

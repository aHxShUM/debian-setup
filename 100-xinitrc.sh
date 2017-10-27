#!/bin/sh

touch ~/.xinitrc

cat <<EOT >> ~/.xinitrc
xset r rate 250 50
exec i3
EOT

#!/bin/sh

#
# rclone
#
#   github:
#     https://github.com/ncw/rclone
#
#   homepage:
#     https://rclone.org/
#

# download
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
7z x rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64

# copy binary
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone

# install manpage
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb

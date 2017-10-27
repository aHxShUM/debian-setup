#!/bin/sh

#
# detail : https://wiki.debian.org/NvidiaGraphicsDrivers
#

echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" | tee -a /etc/apt/sources.list

apt-get update
apt-get install nvidia-driver

#
# if cannot boot into login page
# use `nomodeset` parameter at boot
#

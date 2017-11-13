#!/bin/sh

ln -s /usr/share/zoneinfo/Etc/GMT-8 /etc/localtime

hwclock --systohc --utc

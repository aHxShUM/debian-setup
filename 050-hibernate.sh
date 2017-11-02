#!/bin/sh

# Hibernate
apt-get install uswsusp

################
# Bug fix
################
# if initramfs fails to see your swap file
#
# 1. edit /etc/default/grub
#
#   GRUB_CMDLINE_LINUX_DEFAULT="resume=/dev/sda1 quiet"
#
# 2. run update-grub
#

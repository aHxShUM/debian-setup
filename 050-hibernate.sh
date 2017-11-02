#!/bin/sh

# Hibernate
apt-get install uswsusp

# Add swapfile
SWAPFILE="/swapfile"

fallocate -l 4G $SWAPFILE
mkswap $SWAPFILE
swapon $SWAPFILE

# Make swap persist
echo "$SWAPFILE none swap sw 0 0" | tee -a /etc/fstab

# Use less swap
echo "vm.swappiness=10" | tee /etc/sysctl.d/50-swap.conf
sysctl -p

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

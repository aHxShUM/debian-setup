#!/bin/sh

# Hibernate
apt-get install uswsusp

# Add swapfile
fallocate -l 4G /swapfile
mkswap /swapfile
swapon /swapfile

# Make swap persist
echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab

# Use less swap
echo 'vm.swappiness=10' | tee /etc/sysctl.d/50-swap.conf
sysctl -p

################
# Bug fix
################
# if initramfs fails to see your swap file
#
# edit /etc/default/grub
#
#   GRUB_CMDLINE_LINUX_DEFAULT="resume=/dev/sda1 quiet"
#

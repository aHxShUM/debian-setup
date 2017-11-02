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
echo 'vm.swappiness=10' | tee -a /etc/sysctl.d/swap.conf
sysctl -p

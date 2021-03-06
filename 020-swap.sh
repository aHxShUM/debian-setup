#!/bin/sh

# Add swapfile
SWAPFILE=${1:-/swapfile}

fallocate -l 4G $SWAPFILE
chmod 600 $SWAPFILE
mkswap $SWAPFILE
swapon $SWAPFILE

# Make swap persist
echo "$SWAPFILE none swap sw 0 0" | tee -a /etc/fstab

# Use less swap
echo "vm.swappiness=10" | tee /etc/sysctl.d/50-swap.conf
sysctl -p

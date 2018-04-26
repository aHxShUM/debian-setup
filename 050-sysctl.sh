#!/bin/sh

# fs watcher
echo 'fs.inotify.max_user_watches = 524288' | tee /etc/sysctl.d/50-fs.inotify.conf

echo 'net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0
' | tee /etc/sysctl.d/10-disable-firewall-on-bridge.conf

# Commit updates
sysctl --system

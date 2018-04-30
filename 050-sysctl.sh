#!/bin/sh

# fs watcher
tee /etc/sysctl.d/50-fs.inotify.conf << EOF
fs.inotify.max_user_watches = 524288
EOF

tee /etc/sysctl.d/10-disable-firewall-on-bridge.conf << EOF
net.bridge.bridge-nf-call-ip6tables = 0
net.bridge.bridge-nf-call-iptables = 0
net.bridge.bridge-nf-call-arptables = 0
EOF

# Commit updates
sysctl --system

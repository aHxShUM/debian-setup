#!/bin/sh

USER=${1:-ahshum}

# install QEMU
apt-get install -y qemu 

# install QEMU-KVM
apt-get install -y qemu-kvm libvirt-clients libvirt-daemon-system

adduser $USER libvirt
adduser $USER libvirt-qemu

# install OVMF
apt-get install ovmf

# SPICE
# https://www.spice-space.org/download.html
# apt-get install virt-viewer libspice-protocol-dev libspice-server1

# SPICE Guest
#
# Windows:
#     https://www.spice-space.org/download/windows/spice-guest-tools/spice-guest-tools-latest.exe

# Virtio
# https://fedoraproject.org/wiki/Windows_Virtio_Drivers#Direct_download

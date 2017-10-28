#!/bin/sh

# install QEMU
apt-get install qemu 

# install QEMU-KVM
apt-get install qemu-kvm libvirt-clients libvirt-daemon-system

adduser <youruser> libvirt
adduser <youruser> libvirt-qemu
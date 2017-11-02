#!/bin/sh

# 1. edit /etc/default/grub
#
#   GRUB_DEFAULT=saved
#


# 2. set reboot to menuentry
# Windows is most likely at index 2
#

grub-reboot 2


# 3. reboot
#

reboot

#!/bin/sh

# Keyboard backlight
echo 1 | sudo tee /sys/class/leds/asus::kbd_backlight/brightness

# Screen backlight
sudo xbacklight 1

# CPU turbo boost
echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo

# CPU info
cpupower frequency-info
i7z

# CPU frequency
sudo cpupower frequency-set -u 1.2GHz

# Touchpad
# detail : https://wiki.debian.org/SynapticsTouchpad
mkdir -p /etc/X11/xorg.conf.d
echo 'Section "InputClass"
  Identifier "libinput touchpad catchall"
  MatchIsTouchpad "on"
  MatchDevicePath "/dev/input/event*"
  Driver "libinput"
  Option "Tapping" "on"
EndSection' | tee /etc/X11/xorg.conf.d/40-libinput.conf

# fix Dropbox
LD_LIBRARY_PATH=~/.dropbox-dist/dropbox-lnx.x86_64-3.8.8/
ldd ~/.dropbox-dist/dropbox-lnx.x86_64-3.8.8/* 2 > /dev/null | grep "not found"

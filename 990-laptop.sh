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

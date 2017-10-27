#!/bin/sh

# Keyboard backlight
echo 1 | tee /sys/class/leds/asus::kbd_backlight/brightness

#!/bin/sh

echo $1 | tee /sys/class/leds/asus::kbd_backlight/brightness

# OR
# xrandr --output LCD --brightness $1

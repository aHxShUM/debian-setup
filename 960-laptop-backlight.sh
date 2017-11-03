#!/bin/sh

BRIGHTNESS=${1:-800}

echo $BRIGHTNESS | tee /sys/class/backlight/intel_backlight/brightness

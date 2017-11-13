#!/bin/sh

BASE=/sys/class/backlight/intel_backlight
MAX=$(cat $BASE/max_brightness)
PERCENT=${1:-10}

VALUE=$(($PERCENT * $MAX / 100))

echo $VALUE | tee $BASE/brightness

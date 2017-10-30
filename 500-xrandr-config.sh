#!/bin/sh

# Custom resolution
gtf 1920 1280 60 -x

xrandr --newmode <output>

xrandr --addmode LCD <mode>

xrandr --output LCD --mode <mode>

#!/bin/sh

pkgs=""
pkgs="$pkgs linux-cpupower tlp powertop"
pkgs="$pkgs xbacklight"

apt-get install "$pkgs"

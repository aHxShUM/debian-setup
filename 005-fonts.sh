#!/bin/sh

###
# 1. Download
#
# Source Han Sans
#   https://github.com/adobe-fonts/source-han-sans/releases
#
# Source code pro
#   https://github.com/adobe-fonts/source-code-pro/releases

###
# 2. Move to /usr/share/fonts

###
# 3. Update cache

fc-cache -f -v

###
# Utils
#
# List fonts
#   fc-list
#
# Match
#   fc-match

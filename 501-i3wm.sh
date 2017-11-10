#!/bin/sh

# i3wm Docs
#   http://i3wm.org/docs/userguide.html

echo '
#################################

# Program
exec --no-startup-id dropbox start -i
exec --no-startup-id ibus-daemon --xim -d -r

# Hotkeys
bindsym Mod1+F1 exec amixer -q set Master 2%+ unmute
bindsym Mod1+F2 exec amixer -q set Master 2%- unmute
bindsym Mod1+F3 exec amixer -q set Master toggle

bindsym $mod+Shift+a focus child

# Hotkeys for laptop
#bindsym XF86AudioRaiseVolume exec amixer -q set Master 2%+ unmute
#bindsym XF86AudioLowerVolume exec amixer -q set Master 2%- unmute
#bindsym XF86AudioMute exec amixer -q set Master toggle

# Config
focus_follows_mouse no
hide_edge_borders smart
new_window pixel 3
' | tee -a ~/.config/i3/config

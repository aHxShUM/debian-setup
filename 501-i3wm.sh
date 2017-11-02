#!/bin/sh

echo '
# Program
exec --no-startup-id dropbox start -i

# Hotkeys
bindsym Mod1+F1 exec amixer -q set Master 2%+ unmute
bindsym Mod1+F2 exec amixer -q set Master 2%- unmute
bindsym Mod1+F3 exec amixer -q set Master toggle

# Hotkeys for laptop
#bindsym XF86AudioRaiseVolume exec amixer -q set Master 2%+ unmute
#bindsym XF86AudioLowerVolume exec amixer -q set Master 2%- unmute
#bindsym XF86AudioMute exec amixer -q set Master toggle

# Config
focus_follows_mouse no
hide_edge_borders smart
for_window [class="Google-chrome"] border pixel 1
for_window [class="Atom"] border pixel 1
' | tee -a ~/.config/i3/config
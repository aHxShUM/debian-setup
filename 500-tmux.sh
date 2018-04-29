#!/bin/sh

echo "set -g default-terminal screen-256color
set -g mode-keys vi

bind-key -t vi-copy 'y' copy-pipe 'xclip -i -sel c'
" | tee ~/.tmux.conf

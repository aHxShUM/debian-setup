#!/bin/sh

tee ~/.tmux.conf << EOF
set -g mode-keys vi

bind-key -t vi-copy 'y' copy-pipe 'xclip -i -sel c'
EOF

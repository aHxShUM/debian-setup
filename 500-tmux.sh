#!/bin/sh

echo "
set -g mode-keys vi

bind-key -t vi-copy 'y' copy-pipe 'xclip -i -sel c'
" | tee ~/.tmux.conf

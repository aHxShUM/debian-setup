#!/bin/sh

echo 'export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=fcitx
export TERM=xterm-256color
export EDITOR=vim
' | tee ~/.envrc

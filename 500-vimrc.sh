#!/bin/sh

# add
# let g:skip_defaults_vim = 1
# to /etc/vim/vimrc
# for respecting vimrc.local

echo ':set mouse-=a
:set tabstop=4 shiftwidth=4 softtabstop=4
:set expandtab
:set formatoptions-=cro
:syntax on
' | tee /etc/vim/vimrc.local

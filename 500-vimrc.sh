#!/bin/sh

sed -i '/" let g:skip_defaults_vim = 1/c let g:skip_defaults_vim = 1' /etc/vim/vimrc

echo ':set mouse-=a
:set tabstop=4 shiftwidth=4 softtabstop=4
:set expandtab
:set formatoptions-=cro
:syntax on
' | tee /etc/vim/vimrc.local

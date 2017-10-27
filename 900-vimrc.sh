#!/bin/sh

cat >> /etc/vim/vimrc.local <<EOT
:set mouse-=a
:set tabstop=4 shiftwidth=4 softtabstop=4
:set expandtab
:set formatoptions-=cro
:syntax on
EOT

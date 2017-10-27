#!/bin/sh

sed -i '/" let g:skip_defaults_vim = 1/c let g:skip_defaults_vim = 1' /etc/vim/vimrc

sh -c "cat >> /etc/vim/vimrc.local" << EOT
:set mouse-=a
:set tabstop=4 shiftwidth=4 softtabstop=4
:set expandtab
:set formatoptions-=cro
:syntax on
EOT

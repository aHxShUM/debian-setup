#!/bin/sh

# add
# let g:skip_defaults_vim = 1
# to /etc/vim/vimrc
# for respecting vimrc.local

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "call plug#begin()

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'toml-lang/toml'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'

call plug#end()

set mouse-=a
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set formatoptions-=cro
set background=dark
set t_Co=256
syntax on
" | tee ~/.vimrc

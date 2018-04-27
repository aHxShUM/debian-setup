#!/bin/sh

# add
# let g:skip_defaults_vim = 1
# to /etc/vim/vimrc
# for respecting vimrc.local

file="~/.vim/autoload/plug.vim"

if [ -f "$file" ]; then
    curl -fLo "$file" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "call plug#begin()

Plug 'othree/javascript-libraries-syntax.vim'
Plug 'toml-lang/toml'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

set mouse-=a
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set formatoptions-=cro
set background=dark
set t_Co=256
syntax on
set paste

map <C-\> :NERDTreeToggle<CR>
map <C-c> :w !xclip -i -sel c<CR><CR>
map <C-v> :r!xclip -o -sel c<CR>

let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files=0
" | tee ~/.vimrc

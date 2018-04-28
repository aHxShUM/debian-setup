#!/bin/sh

# add
# let g:skip_defaults_vim = 1
# to /etc/vim/vimrc
# for respecting vimrc.local

if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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
Plug 'godlygeek/tabular'

call plug#end()

set mouse-=a
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set formatoptions-=cro
set background=dark
set t_Co=256
syntax on
set paste
set pastetoggle=<F2>

map <C-\> :NERDTreeToggle<CR>
map <C-e>cc :w !xclip -i -sel c<CR>
map <C-e>cp :w !xclip -i -sel p<CR>
map <C-e>cs :w !xclip -i -sel s<CR>
map <C-e>pp :r!xclip -o -sel p<CR>
map <C-e>ps :r!xclip -o -sel s<CR>
map <C-e>pc :r!xclip -o -sel c<CR>

let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0

let g:multi_cursor_use_default_mapping = 1
let g:multi_cursor_exit_from_insert_mode = 0
" | tee ~/.vimrc

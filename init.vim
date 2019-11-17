set termguicolors
set number
set tabstop=4 shiftwidth=4 expandtab
set mouse=a
set showmatch
set ignorecase
set smartcase
set wrap
set encoding=utf-8

call plug#begin('~/.config/nvim/plugins')
Plug 'ycm-core/YouCompleteMe'
Plug 'jeetsukumaran/vim-indentwise'
call plug#end()

set exrc
set secure


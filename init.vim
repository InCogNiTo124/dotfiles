set termguicolors
set number "relativenumber
set tabstop=4 shiftwidth=4 expandtab
set mouse=a
set showmatch
set ignorecase
set smartcase
set wrap
set encoding=utf-8

nnoremap <Space> i_<Esc>r

call plug#begin('~/.config/nvim/plugins')
Plug 'ycm-core/YouCompleteMe'
Plug 'jeetsukumaran/vim-indentwise'
call plug#end()
iab pymain if __name__ == "__main__":
set exrc
set secure
let g:ycm_confirm_extra_conf=0
"let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion=1


set termguicolors
set number "relativenumber
set tabstop=4 shiftwidth=4 expandtab
set mouse=a
set showmatch
set ignorecase
set smartcase
set wrap
set encoding=utf-8

" Undo dir
if !isdirectory($HOME."/.config/nvim/undodir")
    call mkdir($HOME."/.config/nvim/undodir", "", 0700)
endif
set undodir=~/.config/nvim/undodir
set undofile

" Insert a character
" nnoremap <Space> i_<Esc>r


call plug#begin('~/.config/nvim/plugins')
Plug 'ycm-core/YouCompleteMe'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'numirias/semshi'
call plug#end()
iab pymain if __name__ == "__main__":
iab pyclass class Class<CR>
\    def __init__(self):<CR>
\        return<CR><ESC>kkkkwhxcw
set exrc
set secure
let g:ycm_confirm_extra_conf=0
"let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion=1


set number
set relativenumber

syntax on

"rust.vim
filetype plugin indent on
let g:rustfmt_autosave = 1

"NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

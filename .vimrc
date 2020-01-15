set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'vim-syntastic/syntastic'
Plugin 'martinda/Jenkinsfile-vim-syntax'
call vundle#end()
filetype plugin indent on

colorscheme monokai
set clipboard=unnamed
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set number
set lazyredraw
set cursorline
set cursorcolumn
set showmatch
set noswapfile
set relativenumber

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

nnoremap <silent> <F3> :set norelativenumber<CR> :set nonumber<CR>
nnoremap <silent> <F4> :set number<CR> :set relativenumber<CR>

autocmd Filetype python setlocal ts=4 sw=4 sts=4 expandtab colorcolumn=120
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab

" #### Flake8 settings ####
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" " #### End Flake8 settings ####

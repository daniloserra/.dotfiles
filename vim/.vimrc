set autoindent
set mouse=a
set background=dark
autocmd FileType text,latex,markdown setlocal spell spelllang=pt_br,en_us
"set spelllang=pt_br,en_us
set cursorline
set hlsearch
set ignorecase
set laststatus=2
set nocompatible
set number
set relativenumber
set showcmd
set showmatch
set splitright splitbelow
"set tabstop=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on

"mapping

let mapleader = ','

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

autocmd FileType python map <Leader>. :w<CR>:!clear && python %<CR>
autocmd FileType sh map <Leader>. :w<CR>:!clear && ./%<CR>
autocmd FileType javascript map <Leader>. :w<CR>:!clear && node %<CR>
map <Leader>s :so ~/.vimrc <CR>


"abreviations
ab pyscript #!/usr/bin/python2.7
ab shscript #!/bin/sh

if !has('guirunning')
  set t_Co=256
endif

call plug#begin()

" On-demand loadings
Plug 'preservim/nerdtree'
"Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'ycm-core/YouCompleteMe'
"Plug 'kiteco/vim-plugin'

call plug#end()

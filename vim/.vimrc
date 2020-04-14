set autoindent
set background=dark
set spell
set spelllang=pt_br,en_us
set cursorline
set hlsearch
set ignorecase
set laststatus=2
set nocompatible
set number
set relativenumber
set showcmd
set showmatch
set tabstop=4
syntax on

"mapping

let mapleader = ','

map <Leader>. :w<CR>:!clear && python %<CR>
map <Leader>s :so ~/.vimrc <CR>


"abreviations
ab pyscript #!/usr/bin/python2.7
ab shscript #!/bin/sh

if !has('gui_running')
  set t_Co=256
endif

call plug#begin()

" On-demand loadings
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'

call plug#end()

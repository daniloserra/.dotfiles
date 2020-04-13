set autoindent
set cursorline
set ignorecase
set laststatus=2
set nocompatible
set number
set relativenumber
set showcmd
set showmatch
set tabstop=4
syntax on

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

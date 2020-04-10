set number
set relativenumber
set showcmd
"set cursorline
set nocompatible
syntax on
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

call plug#begin()

" On-demand loadings
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'

call plug#end()

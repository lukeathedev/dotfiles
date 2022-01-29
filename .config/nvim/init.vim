" Whitespace
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab

" UI
set ruler
set mouse=a
set nu rnu
set background=dark

set backspace=indent,eol,start
set confirm
set formatoptions+=j
set history=1000
" set spell

" Files
set path+=**
set wildmenu

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-rsi'

call plug#end()

" Enter the current millenium
set nocompatible

" 
syntax enable


filetype plugin indent on

" Tab stuff
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set wildmode=longest,list,full
set wildmenu

" Turn on line numbers
set number

" Plugins - managed with junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

" Set color scheme
colo seoul256
set background=dark


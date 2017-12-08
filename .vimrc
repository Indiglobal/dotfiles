" Enter the current millenium
set nocompatible

" 
syntax enable

" settings
set hidden

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

" Mappings
nmap <S-Enter> O<Esc>

" Plugins - managed with junegunn/vim-plug
" To install vim-plug: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()

" Plugin settings
" vim-airline
let g:airline#extensions#tabline#enabled = 1

" Set color 
colo seoul256
set background=dark


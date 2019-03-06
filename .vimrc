" Enter the current millenium
set nocompatible

" 
syntax enable

" Settings
set hidden
set encoding=utf-8 "required for YouCompleteMe
set hlsearch

filetype plugin indent on

" ---Tab stuff---
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=2

set autoindent
set wildmode=longest,list,full
set wildmenu

" ---visual settings---
"  Turn on 80 character column
set colorcolumn=80

" Turn on line numbers
set number

" Mappings
" map <Space> <Leader> # not wokring
nmap <S-Enter> O<Esc>
noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>
noremap <C-n> :NERDTreeToggle<CR>

" ---Functions---
nnoremap <Leader>s :%/\<<C-r><C-w>\>/ 
" use this to find and replace and instances of a word under the cursor, place
" cursor on the word and then press :s enter the replacement followed by /g

" Plugins - managed with junegunn/vim-plug
" To install vim-plug: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" run PlugInstall! or PlugUpdate to install the plugins

" Automatic installation of vimplug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'valloric/YouCompleteMe'

call plug#end()

" Plugin settings
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowHidden=1

" Set color 
" colo seoul256
" set background=dark


" Enter the current millenium
set nocompatible

" 
syntax enable

" Settings
set hidden

filetype plugin indent on

" Tab stuff
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=2

set autoindent
set wildmode=longest,list,full
set wildmenu

" Turn on line numbers
set number

" Mappings
nmap <S-Enter> O<Esc>
noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>

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
Plug 'valloric/YouCompleteMe'

call plug#end()

" Plugin settings
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let NERDTreeShowHidden=1

" Set color 
" colo seoul256
" set background=dark


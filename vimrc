set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-endwise'
Plugin 'vim-airline/vim-airline'

call vundle#end()

filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2

" NERDTree config

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" NERDTree end config

let g:airline#extensions#tabline#enabled = 1

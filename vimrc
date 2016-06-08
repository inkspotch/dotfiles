set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'tpope/vim-sensible'

call vundle#end()

filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2

" NERDTree config

map <C-f> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree end config

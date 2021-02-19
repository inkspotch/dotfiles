let g:mapleader = ","
set nocompatible
filetype off

call plug#begin("~/.config/vim/plugged")

Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'yegappan/taglist'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }

call plug#end()

filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2

" NERDTree config

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>gf :NERDTreeFind<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeStatusline = ''

" NERDTree end config

let g:airline#extensions#tabline#enabled = 1

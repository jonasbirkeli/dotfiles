    " ==============================
" Basic Settings
" ==============================
set nocompatible            " Disable compatibility with old vi
filetype plugin indent on   " Enable filetype detection, plugins, and indenting
syntax on                   " Enable syntax highlighting
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set clipboard=unnamedplus   " Use system clipboard
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Number of spaces that a <Tab> counts for
set shiftwidth=4            " Number of spaces to use for autoindent
set smartindent             " Smart autoindenting

" ==============================
" Key Mappings
" ==============================
" jk to ESC in insert mode
inoremap jk <Esc>

" Space as leader key
let mapleader=" "
nnoremap <Space> :

" Quick save
nnoremap <leader>w :w<CR>

" Quick quit
nnoremap <leader>q :q<CR>

" Save & quit
nnoremap <leader>x :wq<CR>

" Clear search highlighting
nnoremap <leader>h :nohlsearch<CR>

" Move lines up/down in visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y


" ==============================
" Plugin Manager: vim-plug
" ==============================
call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'

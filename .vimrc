" General settings
set nocompatible              " Disable Vi compatibility
set encoding=utf-8           " Set encoding to UTF-8
set number                   " Show line numbers
set autoindent               " Automatically indent new lines
set tabstop=4                " Number of spaces for a tab
set shiftwidth=4             " Number of spaces to use for autoindent
set expandtab                " Use spaces instead of tabs
set smartindent              " Smart indenting for C-like languages
set mouse=a                  " Enable mouse support

" Appearance
syntax enable                 " Enable syntax highlighting
colorscheme desert           " Set color scheme (you can change it)

" Search
set hlsearch                  " Highlight search results
set incsearch                 " Incremental search

" Indentation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

" Map leader key
let mapleader = "\<Space>"

" Remap jj to escape in insert mode
inoremap jj <Esc>

" Remap :wq to save and quit
nnoremap <leader>wq :wq<CR>

" Map Ctrl+s to save
noremap <C-s> :w<CR>

" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


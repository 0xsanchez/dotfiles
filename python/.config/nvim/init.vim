" Settings
syntax on

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set cursorline
set clipboard=unnamedplus

" Keybindings
let mapleader = " "

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :x<CR>

nnoremap <Leader>e :NERDTreeToggle<CR>


"Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'


call plug#end()

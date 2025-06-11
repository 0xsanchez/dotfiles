" Settings
set autoread " Auto read file when modified from the outside
set clipboard=unnamedplus " Use system clipboard
set expandtab smarttab tabstop=4 shiftwidth=4 " Tabs
set guicursor=n-v-c-i:block " Cursor
set ignorecase hlsearch incsearch " Searching
set nobackup nowritebackup noswapfile " No backups
set noerrorbells novisualbell " Disable annoying error bells
set number cursorline cursorlineopt=number " Numbers
set scrolloff=10 " Scroll
set wrap " Wrap
autocmd FileType * set formatoptions-=cro " Disable auto comments

" Undo
set undodir=~/.undo
let undo_dir = has('nvim') ? stdpath('data') . '/undo' : '~/.undo'
if !isdirectory(undo_dir)
  call mkdir(expand(undo_dir), 'p')
endif
set undofile

" Mappings
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-D> <nop>

" Netrw
let g:netrw_banner = 0
let g:netrw_keepdir = 0

" Filetype detection
filetype plugin indent on

" Automatic installation of vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins
call plug#begin()
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
call plug#end()
map cs gs

" Colors
set termguicolors
colorscheme aura-dark

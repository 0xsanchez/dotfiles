" Welcome
syntax on
filetype plugin indent on

" Behaviour
set autoread " Auto read file when modified from the outside
set ignorecase hlsearch incsearch " Searching
set nobackup nowritebackup noswapfile " No backups
set noerrorbells novisualbell " Disable annoying error bells
set updatetime=300 " Performance
set clipboard=unnamedplus " Use system clipboard
autocmd FileType * set formatoptions-=cro " Disable auto comments

" Persistent undo
let undo_dir = has('vim') ? stdpath('data') . '/undo' : '~/.vim/undo'
if !isdirectory(undo_dir)
  " silent execute '!mkdir -p ~/.vim/undo'
  call mkdir(expand(undo_dir), 'p')
endif
set undodir=~/.vim/undo undofile

" Interface
set  expandtab smarttab  tabstop=4 shiftwidth=4 " Tabs
set cursorline cursorlineopt=number number " Numbers
set scrolloff=10 " Scroll
set wrap " Wrap
set listchars=tab:!·,trail:· " Guides

" Emacs command line motions
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-D> <nop>
cnoremap <C-F> <nop>
cnoremap <C-Q> <nop>

" Improvements
noremap f %
noremap m :echo "key to macro?"<CR>@
noremap q :echo "key to record?"<CR>q
noremap <S-q> <nop>
noremap <C-f> /

" Buffers
noremap <C-b>l :buffers<CR>
noremap <C-b>n :bext<CR>
noremap <C-b>p :bprevious<CR>
noremap <C-b>s :buffer 

" Netrw
let g:netrw_banner = 0
let g:netrw_keepdir = 0
noremap <C-w>ee :Explore .<CR>
noremap <C-w>er :Rexplore<CR>
noremap <C-w>es :split .<CR>
noremap <C-w>ev :vsplit .<CR>

" Plugins
let data_dir = has('vim') ? stdpath('data') . '/pack/minpac/opt' : '~/.vim/pack/minpac/opt'
if empty(glob(data_dir . '/minpac/plugin/minpac.vim'))
  silent execute '!git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac'
  autocmd VimEnter * call minpac#update()
endif
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac') " Minimal plugin manager
call minpac#add('mhinz/vim-startify') " Startify
call minpac#add('sainnhe/gruvbox-material') " Gruvbox Matetial
call minpac#add('simeji/winresizer') " Windows modal resizing
call minpac#add('tpope/vim-commentary') " Toggle comments
call minpac#add('farmergreg/vim-lastplace') " Remember last cursor position
cnoremap <C-p> call minpac#update()<CR>
cnoremap <C-l> call minpac#clean()<CR>

" Resize
noremap <C-w>f :WinResizerStartFocus<CR>
noremap <C-w>m :WinReisizerStartMove<CR>
noremap <C-w>z :WinResizerStartResize<CR>

" Gruvbox
set termguicolors
set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
hi Normal guibg=NONE ctermbg=NONE
noremap <C-w>bd :set background=dark<CR>
noremap <C-w>bl :set background=light<CR>

" Startify
let g:startify_custom_header = startify#pad(readfile(expand('~/startify.txt')))
let g:startify_bookmarks = ['~/.gitconfig', '~/.vimrc', '~/.bashrc']
let g:startify_lists = [{'type':'files','header':['recent']},{'type':'bookmarks','header':['bookmarks']}]
let g:startify_files_number = 5 " Number of recents
let g:startify_enable_special = 1 " Empty buffer option
noremap <C-w>d :Startify<CR>

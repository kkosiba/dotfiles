set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox' " gruvbox theme
colorscheme gruvbox
set background=dark	 " dark gruvbox variant

Plugin 'vim-airline/vim-airline'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set encoding=utf-8

set laststatus=2

set number			" Show line numbers
set relativenumber		" Show relative line number
set ts=4			" Set tabs to have 4 spaces
set expandtab			" Expand tabs into spaces
set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
set cursorline			" Highlight current line
"set linebreak			" Break lines at word (requires Wrap lines)
"set showbreak=+++		" Wrap-broken line prefix
set textwidth=100		" Line wrap (number of cols)
set showmatch			" Highlight matching brace
set belloff=all			" No flashing 
 
set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set incsearch			" Searches for strings incrementally
 
"set smartindent			" Enable smart-indent
"set smarttab			" Enable smart-tabs
"set softtabstop=4		" Number of spaces per Tab
 
set ruler			" Show row and column ruler information
 
set undolevels=1000		" Number of undo levels
syntax enable			" Enable syntax processing
let python_highlight_all = 1    " Enable all Python syntax highlighting features
let g:airline_powerline_fonts = 1

"------------------------------------
" Settings
"------------------------------------

set nocompatible
set clipboard=unnamed
filetype off

"------------------------------------
" User Interface
"------------------------------------
set ruler
set hlsearch
set incsearch
set hidden
set title
set novisualbell
set noerrorbells
set noerrorbells
set t_vb=
set mouse=a

if &t_Co >= 256 || has("gui_running")
    colorscheme base16-default-dark
endif
let base16colorspace=256

if &t_Co > 2 || has("gui_running")
    syntax on
    syntax enable
endif

set background=dark
set showmatch
set number
set relativenumber
set laststatus=2
set guifont=Consolas:h10

"------------------------------------
" Indentation 
"------------------------------------
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
filetype indent on


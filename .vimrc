set nocompatible
filetype off

"Plugins
" =============

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-dispatch'
Plugin 'omnisharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on

" User Interface
" =======================

"Always show current position
set ruler

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Makes search act like search in modern browsers
set incsearch

set hidden

set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

set t_vb=
set tm=500

set mouse=a    "enable the mouse

set pastetoggle=<F2>

" Indentation and Display
" =======================

" We want to replace tabs with spaces and have 4 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
filetype indent on

" Appearance
" ==========

" "Syntax highlighting should be in 256 colors
if &t_Co >= 256 || has("gui_running")
    colorscheme molokai
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
    syntax enable
endif
set background=dark
set showmatch
set number              " show line numbers
set relativenumber 	" show relative numbers
set laststatus=2
set guifont=Consolas:h10
let g:airline#extensions#tabline#enabled = 1	"plugin airline setting

" Mappings
" ==========

" Map leader key
let mapleader = "\<space>"

"Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"Copy and paste to system clipboard
set clipboard=unnamed

nmap <Leader>p "*p
nmap <Leader>P "*P
nmap <Leader>y "*y
nmap <Leader>d "*d

vmap <Leader>y "*y
vmap <Leader>d "*d
vmap <Leader>p "*p
vmap <Leader>P "*P

"Window switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Bash like keys for the command line:
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

"Plugin shortcuts
nmap <F9> :NERDTreeToggle<CR>
nmap <F12> :TagbarToggle<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <leader>l :nohl<CR><C-l>
" <set ctags>
"let g:tagbar_ctags_bin = 'C:\Users\VM-Admin\ctags58\ctags.exe'

"OmniSharp keybindings

let g:OmniSharp_timeout = 15

set completeopt=longest,menuone,preview

set splitbelow
"let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']

augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    "autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <leader>k :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <leader>j :OmniSharpNavigateDown<cr>

augroup END

set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

"------------------------------------
" Keybindings
"------------------------------------

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
nmap <leader>p "*p
nmap <leader>P "*P
nmap <leader>y "*y
nmap <leader>d "*d

vmap <leader>y "*y
vmap <leader>d "*d
vmap <leader>p "*p
vmap <leader>P "*P

"Window switching
"nnoremap <C-H> <C-W><C-H>
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
" used vim tmux navigator instead
nnoremap <silent> <C-H> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-J> :TmuxNavigateDown<CR>
nnoremap <silent> <C-K> :TmuxNavigateUp<CR>
nnoremap <silent> <C-L> :TmuxNavigateRight<CR>

"Window splits
nnoremap _ :sp<CR>
nnoremap <bar> :vsp<CR>

"saving and closing
nmap <C-S> :w!<CR>
nnoremap Q :q<CR>

"Buffer switching
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>

"Bash like keys for the command line:
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

"Plugin shortcuts
nmap <F9> :NERDTreeToggle<CR>
nmap <F12> :TagbarToggle<CR>

"removes any search highlighting.
nnoremap <silent> <leader>l :nohl<CR><C-l>

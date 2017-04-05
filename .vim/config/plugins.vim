"------------------------------------
" Plugins
"------------------------------------

set rtp+=$HOME/.vim/bundle/Vundle.vim/

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'chriskempson/base16-vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'tpope/vim-dispatch'
Plugin 'omnisharp/omnisharp-vim'

call vundle#end()
filetype plugin indent on
let g:airline#extensions#tabline#enabled = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

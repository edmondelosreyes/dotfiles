"------------------------------------
" C# related settings/keybindings
"------------------------------------

" Omnisharp

let g:OmniSharp_timeout = 15
set completeopt=longest,menuone,preview
set splitbelow
augroup omnisharp_commands
    autocmd!

    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>

    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    autocmd FileType cs nnoremap <leader>k :OmniSharpNavigateUp<cr>
    autocmd FileType cs nnoremap <leader>j :OmniSharpNavigateDown<cr>

augroup END

set updatetime=500
set cmdheight=2

nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>
nnoremap <leader>nm :OmniSharpRename<cr>
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
nnoremap <leader>tp :OmniSharpAddToProject<cr>

nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

nnoremap <leader>th :OmniSharpHighlightTypes<cr>

let g:OmniSharp_want_snippet=1

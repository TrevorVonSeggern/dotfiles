" Ctrl-backspace deletes previous word
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" pressing escape sucks.
imap jj <Esc>

" Better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ctl backspace to delete prev word.
imap <C-BS> <C-W>

" tab completion
set wildmode=longest,list,full
set wildmenu


augroup omnisharp_commands
	autocmd!

	" Show type information automatically when the cursor stops moving
	autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

	" errorformat
	autocmd BufNewFile,BufRead *.cs set errorformat=\ %#%f(%l\\\,%c):\ %m
	" autocmd BufNewFile,BufRead *.cs setlocal compiler cs

	" The following commands are contextual, based on the cursor position.
	autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

	" Finds members in the current buffer
	autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

	autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
	autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
	autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

	" Navigate up and down by method/property/field
	autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
	autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

	" Find all code errors/warnings for the current solution and populate the quickfix window
	autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>

	" format
	autocmd FileType cs nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

	" tests
	autocmd FileType cs nnoremap <leader>rt :TestNearest<cr>
	autocmd FileType cs nnoremap <leader>rf :TestFile<cr>
	autocmd FileType cs nnoremap <leader>ra :TestSuite<cr>
	autocmd FileType cs nnoremap <leader>rl :TestLast<cr>
augroup END

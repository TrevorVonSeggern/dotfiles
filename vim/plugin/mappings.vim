augroup standard_maps
	autocmd!
	" Ctrl-backspace deletes previous word
	noremap! <C-BS> <C-w>
	noremap! <C-h> <C-w>
	" ctl backspace to delete prev word.
	imap <C-BS> <C-W>

	" pressing escape sucks.
	imap jj <Esc>
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" Better split navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

	map <C-w><C-w> :NERDTreeToggle %<CR> " ctrl ww opens nerdtree
augroup END

augroup csharp_commands
	autocmd!

	" Show type information automatically when the cursor stops moving
	" errorformat
	" autocmd BufNewFile,BufRead *.cs setlocal compiler cs

	" tests
	autocmd FileType cs nnoremap <leader>rt :TestNearest<cr>
	autocmd FileType cs nnoremap <leader>rf :TestFile<cr>
	autocmd FileType cs nnoremap <leader>ra :TestSuite<cr>
	autocmd FileType cs nnoremap <leader>rl :TestLast<cr>
augroup END

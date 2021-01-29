"let b:OmniSharp_server_stdio = 1
let b:OmniSharp_highlight_types = 2
let g:OmniComplete_fetch_full_documentation = 0
let g:OmniSharp_selector_findusages = 'fzf'

let b:ale_linters = [ 'OmniSharp' ]

augroup csharp_commands
	autocmd!

	" error format
	autocmd BufNewFile,BufRead *.cs set errorformat=\ %#%f(%l\\\,%c):\ %m


	" Show type information automatically when the cursor stops moving
	" errorformat
	" autocmd BufNewFile,BufRead *.cs setlocal compiler cs

	" tests
	autocmd FileType cs nnoremap <leader>rt :TestNearest<cr>
	autocmd FileType cs nnoremap <leader>rf :TestFile<cr>
	autocmd FileType cs nnoremap <leader>ra :TestSuite<cr>
	autocmd FileType cs nnoremap <leader>rl :TestLast<cr>
augroup END

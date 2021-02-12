"let b:OmniSharp_server_stdio = 1
let b:OmniSharp_highlight_types = 2
let g:OmniComplete_fetch_full_documentation = 0
let g:OmniSharp_selector_findusages = 'fzf'

let b:ale_linters = [ 'OmniSharp' ]

compiler cs

" Should this be in a augroup?
"nmap <buffer> gd :echo 'hi'<cr>
nmap <buffer> gd :OmniSharpGotoDefinition<cr>

augroup cs
	au!

	" error format
	au BufNewFile,BufRead *.cs set errorformat=\ %#%f(%l\\\,%c):\ %m


	" goto definition
	"autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)

	" tests
	"au FileType cs nnoremap <leader>rt :TestNearest<cr>
	"au FileType cs nnoremap <leader>rf :TestFile<cr>
	"au FileType cs nnoremap <leader>ra :TestSuite<cr>
	"au FileType cs nnoremap <leader>rl :TestLast<cr>
augroup END

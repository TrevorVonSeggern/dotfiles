augroup standard_maps
	autocmd!
	let mapleader=" "

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
	"nnoremap <C-J> <C-W><C-J>
	"nnoremap <C-K> <C-W><C-K>
	"nnoremap <C-L> <C-W><C-L>
	"nnoremap <C-H> <C-W><C-H>
	nnoremap <leader>h :wincmd h<CR>
	nnoremap <leader>j :wincmd j<CR>
	nnoremap <leader>k :wincmd k<CR>
	nnoremap <leader>l :wincmd l<CR>

	nnoremap <leader>u :UndotreeShow<CR>

	" commenting lines
	vmap ++ <plug>NERDCommenterToggle
	nmap ++ <plug>NERDCommenterToggle

	" ww opens nerd tree
	map <C-w><C-w> :NERDTreeToggle %<CR> " ctrl ww opens nerdtree
augroup END

augroup standard_maps
	autocmd!

	inoremap <silent><expr> <C-k> coc#refresh()
	nnoremap <leader><SPACE> :CocAction<CR>

	" Ctrl-backspace deletes previous word
	noremap! <C-BS> <C-w>
	noremap! <C-h> <C-w>
	" ctl backspace to delete prev word.
	imap <C-BS> <C-W>

	" pressing escape sucks.
	imap jj <Esc>
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	" Better tabbing
	vnoremap < <gv
	vnoremap > >gv

	" Better split navigation
	nnoremap <leader>h :wincmd h<CR>
	nnoremap <leader>j :wincmd j<CR>
	nnoremap <leader>k :wincmd k<CR>
	nnoremap <leader>l :wincmd l<CR>
	" Use alt + hjkl to resize windows
	nnoremap <M-j>    :resize -2<CR>
	nnoremap <M-k>    :resize +2<CR>
	nnoremap <M-h>    :vertical resize -2<CR>
	nnoremap <M-l>    :vertical resize +2<CR>

	" buffer navigation
	nnoremap <leader>p    :bp<CR>
	nnoremap <leader>n    :bn<CR>

	" Easy CAPS
	"inoremap <c-u> <ESC>viwUi
	"nnoremap <c-u> viwU<Esc> "NO ctrl u go up.

	" Alternate way to save
	nnoremap <C-s> :w<CR>
	" Alternate way to quit
	nnoremap <C-Q> :wq!<CR>

	nnoremap <leader>u :UndotreeShow<CR>

	" commenting lines
	vmap ++ <plug>NERDCommenterToggle
	nmap ++ <plug>NERDCommenterToggle

	" ww opens nerd tree
	map <C-w><C-w> :NERDTreeToggle %<CR> " ctrl ww opens nerdtree
augroup END

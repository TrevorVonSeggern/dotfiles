syntax on

" file format default
set encoding=utf-8
set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility
set fileformats=unix,dos,mac
set wildignore+=*/.git/*,*/.idea/*,*/.DS_Store
set undofile

" make things faster.
set ttyfast                                         "assume fast terminal connection
set lazyredraw
set history=1000                                    "number of command lines to remember

" default tab handling. Default use tabs.
set autoindent noexpandtab tabstop=4 shiftwidth=4

" ui stuff.
set timeoutlen=350 " # of ms between j and j
set backspace=indent,eol,start " can use backspace
set splitright
set splitbelow
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " characters for whitespace

" bells / sounds suck.
set visualbell
set noerrorbells
set belloff+=ctrlg
set t_vb=

" line number stuff.
set number relativenumber
set scrolloff=8

" search
set smartcase
set incsearch
set nohls

" tab completion menu.
set completeopt+=longest

"completion of the :somethin<tab>
set wildmode=longest,list,full
set wildmenu

" Theme
"set background=dark
if (has("termguicolors"))
	"set termguicolors " Doesn't work in alacritty.
	"colorscheme codedark
	"colorscheme base16-default-dark
	colorscheme trevor_color
	" highlight Comment cterm=italic gui=italic
else
	"set t_Co=256
	"let base16colorspace=256
endif


" python 3 for the win
set pyxversion=3

" Airline ==>==>====<==<==
let g:airline#extensions#tabline#enabled = 1 " show errors in the status line

" NERD TREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = ['bin', 'obj', '\.js.map$']

syntax on

" leader
nnoremap <SPACE> <Nop>
let mapleader=" "

set nobackup

" file format default
set encoding=utf-8
set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility
set fileformats=unix,dos,mac
set wildignore+=*/.git/*,*/.idea/*,*/.DS_Store
set undofile
set nobk
"set autochdir " so open vim, then ctrl ww opens nerdtree

" make things faster.
set ttyfast                                         "assume fast esterminal connection
set lazyredraw
set history=1000                                    "number of command lines to remember

" default tab handling. Default use tabs.
set autoindent noexpandtab tabstop=4 shiftwidth=4
set cindent cino=j1,(0,ws,Ws " makes lambda indent not suck. Might need to move to file type specific plugin

" ui stuff.
set timeoutlen=350 ttimeoutlen=0 " # of ms between j and j
set backspace=indent,eol,start " can use backspace
set splitright
set splitbelow
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< " characters for whitespace
set shortmess+=c " shortmess is the hit-enter prompts
set iskeyword+=-

" no mouse in vim
set mouse=

" bells / sounds suck.
set visualbell
set noerrorbells
set belloff+=ctrlg
set t_vb=

" line number stuff.
set number
set norelativenumber
set scrolloff=4

" search
set ignorecase
set smartcase
set incsearch
set nohls

" tab completion menu.
set completeopt+=longest
set completeopt-=preview

"completion of the :somethin<tab>
set wildmode=longest,list,full
set wildmenu

" Theme
set background=dark
colorscheme gruvbox


" RipGrep configuration
if executable('rg')
	let g:rg_derive_root='true'
endif
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)


"""""" Plugin Config """"""

" Coc
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = [ 'coc-jedi' ]

" omnisharp
let g:OmniSharp_server_stdio = 1 " need to run :OmniSharpInstall

" emmit should lazy install.
let user_emmet_install_global = 0

" python 3 for the win
if has('pythonx')
	set pyxversion=3
endif

" Airline ==>==>====<==<==
let g:airline#extensions#tabline#enabled = 1 " show errors in the status line

" NERD TREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Ex | endif
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_list_hide= 'bin,obj'

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = ['bin', 'obj', '\.js.map$', '.pyc', '__pycache__']

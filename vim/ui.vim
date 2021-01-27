set encoding=utf-8
set history=1000                                    "number of command lines to remember
set ttyfast                                         "assume fast terminal connection
set lazyredraw
set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility
set noshowmode
" Visual bell is aweful
set visualbell
set belloff+=ctrlg
set t_vb=
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

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

" Airline
let g:airline#extensions#tabline#enabled = 1

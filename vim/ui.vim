set encoding=utf-8
set history=1000                                    "number of command lines to remember
set ttyfast                                         "assume fast terminal connection
set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility

" Theme
if (has("termguicolors"))
  set termguicolors
endif

colo papaya

"colorscheme ayu
" The background should be black regardless of what the terminal theme is.
"highlight Normal ctermbg=black 
"highlight Comment ctermfg=darkgreen
"highlight LineNr ctermfg=white ctermbg=darkgrey

" cursor line shouldn't have a crazy underline
set cursorline
"highlight CursorLine cterm=NONE ctermbg=darkgrey
"highlight clear CursorLineNr
"highlight CursorLineNr ctermfg=white ctermbg=darkgrey

" Airline
let g:airline#extensions#tabline#enabled = 1
set noshowmode

" Visual bell is aweful
set visualbell
set t_vb=

" Show line numbers
set number

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<


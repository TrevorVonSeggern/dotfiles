" line endings
set fileformats=unix,dos,mac

" line numbering on the left.
set number relativenumber

set splitright
set splitbelow

" better copy paste with vim?
set clipboard=unnamed
set clipboard=unnamedplus

" tab configuration
set autoindent noexpandtab tabstop=4 shiftwidth=4
"set smartindent

" can use backspace
set backspace=indent,eol,start

set wildignore+=*/.git/*,*/.idea/*,*/.DS_Store

" can be used from fish or other terminal
"set shell=sh

set ttimeoutlen=50

set undofile
set incsearch

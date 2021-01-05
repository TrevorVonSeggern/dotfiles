" line endings
set fileformats=unix,dos,mac

" line numbering on the left.
set number relativenumber

set splitright
set splitbelow

" better copy paste with vim?
" set clipboard=unnamed
" set clipboard=unnamedplus

" tab configuration
set autoindent noexpandtab tabstop=4 shiftwidth=4
" tab completion
"set smartindent

" can use backspace
set backspace=indent,eol,start

set wildignore+=*/.git/*,*/.idea/*,*/.DS_Store

" can be used from fish or other terminal
"set shell=sh

" 250 millisecond between a double press. Set primarilly for the jj escape.
" usually it's between 150 and 200 milliseconds. Just don't dilly dally too
" much ;)
set timeoutlen=350

set undofile

set incsearch
set smartcase

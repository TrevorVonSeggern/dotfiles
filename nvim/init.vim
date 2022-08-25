set runtimepath+=$XDG_CONFIG_HOME/nvim,$XDG_CONFIG_HOME/nvim/after,$VIM,$VIMRUNTIME
set directory=$XDG_CACHE_HOME/nvim/swap
set undodir=$XDG_CACHE_HOME/nvim/undo

set nocompatible
filetype indent plugin on

runtime plugins.vim

call plug#begin(expand($XDG_CACHE_HOME) . '/nvim/plugged')
" Ui
"Plug 'flazz/vim-colorschemes' " so many colors!
"Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" base editor stuff
Plug 'editorconfig/editorconfig-vim' " respect .editorconfig
Plug 'preservim/nerdcommenter' " this is for commenting lines.
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf.vim' " definitely need both fzf plugs. Not actually duplicate fzf installs.
Plug 'junegunn/fzf', { 'dir': $XDG_CACHE_HOME . '/nvim/fzf', 'do': './install --all' }
Plug 'gioele/vim-autoswap' " because swap files get in the way.

" Plug 'ajh17/vimcompletesme' " alternatives => supertab, youcompleteme. Not
" needed with coc.

Plug 'samoshkin/vim-mergetool' " git

"Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Language agnostic plugins
Plug 'sheerun/vim-polyglot' " is this needed?
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Setup lsp.
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Snippets
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" Language specific plugins
"Plug 'OmniSharp/omnisharp-vim' " dotnet
Plug 'mattn/emmet-vim' " Html
"Plug 'ekalinin/Dockerfile.vim' " dockerfile

call plug#end()


runtime sets.vim
runtime mappings.vim

let g:Servers = [ 'gopls', 'omnisharp', 'sumneko_lua', 'tsserver', 'angularls' ]

lua require('config')
lua require('autocomplete')


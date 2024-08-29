vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.autoindent = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")


vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.mouse=""

vim.g.vimwiki_list = {
	{
		path = '~/Documents/notes/',
		syntax = 'markdown',
		ext = 'md',
	},
	{
		path = '~/Documents/dnd_notes/',
		syntax = 'markdown',
		ext = 'md',
	},
}
--vim.g.vimwiki_global_ext = 0

vim.opt.autowriteall = true

vim.treesitter.language.register("dockerfile", "Dockerfile")


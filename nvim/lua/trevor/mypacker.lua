
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd('colorscheme tokyonight-night')
		end
	})
	use("norcalli/nvim-colorizer.lua")
	use("folke/trouble.nvim")

	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use("nvim-treesitter/playground")
	--use("theprimeagen/harpoon")
	--use("theprimeagen/refactoring.nvim")
	--use("mbbill/undotree")
	use("preservim/nerdcommenter")
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context");

	use('nvim-tree/nvim-web-devicons')
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use { "johmsalas/text-case.nvim",
	config = function()
		require('textcase').setup {}
	end
}

use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
}

use("folke/zen-mode.nvim")

end)

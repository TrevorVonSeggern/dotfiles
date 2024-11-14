
vim.cmd [[packadd packer.nvim]]

local packer = require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
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
	use("windwp/nvim-autopairs")

	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use("nvim-treesitter/playground")
	--use("theprimeagen/harpoon")
	--use("theprimeagen/refactoring.nvim")
	use("preservim/nerdcommenter")
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context")


	use('nvim-tree/nvim-web-devicons')
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}
	use('vimwiki/vimwiki')
	use('pocco81/auto-save.nvim')
	use { "johmsalas/text-case.nvim",
		config = function()
			require('textcase').setup {}
		end
	}
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'neovim/nvim-lspconfig'},

			-- DAP
			{'mfussenegger/nvim-dap'},
			{'rcarriga/nvim-dap-ui'},
			{'jay-babu/mason-nvim-dap.nvim'},
			{'theHamsta/nvim-dap-virtual-text'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},

			-- Snippets
			--{'saadparwaiz1/cmp_luasnip'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	use { 'smjonas/inc-rename.nvim',
		config = function()
			require("inc_rename").setup()
		end,
	}

	use {
		"nvim-neotest/neotest",
		requires = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",

			"Issafalcon/neotest-dotnet",
		}
	}
end)

local cmp = require('cmp')
cmp.setup({
	adapters = {
		require("neotest-dotnet")
	},
	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert,select = true}),
	}),
})

local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  --ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

require("nvim-dap-virtual-text").setup()
----require("mason-nvim-dap").setup({
	----ensure_installed = { "codelldb" }
----})
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}
--dap.configurations.cpp = {
  --{
    --name = 'Launch',
    --type = 'lldb',
    --request = 'launch',
    --program = function()
      --return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --end,
    --cwd = '${workspaceFolder}',
    --stopOnEntry = false,
    --args = {},
  --},
--}
--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp

require("neotest").setup({
	adapters = {
		require("neotest-dotnet")
	}
})

require('nvim-treesitter.configs').setup({
	indent = {
		enable = true,
	},
})


return packer;


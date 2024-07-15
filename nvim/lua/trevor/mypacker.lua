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

	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use("nvim-treesitter/playground")
	--use("theprimeagen/harpoon")
	--use("theprimeagen/refactoring.nvim")
	--use("mbbill/undotree")
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
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- DAP
		{'mfussenegger/nvim-dap'},
		{'rcarriga/nvim-dap-ui'},
		{'jay-babu/mason-nvim-dap.nvim'},
		{'theHamsta/nvim-dap-virtual-text'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},
		{'smjonas/inc-rename.nvim',
			config = function()
				require("inc_rename").setup()
			end,
		},

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
end)

require("nvim-dap-virtual-text").setup()
require("mason-nvim-dap").setup({
	ensure_installed = { "codelldb" }
})
local dap = require('dap')
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}
dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
return packer;


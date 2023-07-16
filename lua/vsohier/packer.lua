vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use ({
		'nvim-telescope/telescope.nvim',
		requires = {{ 'nvim-lua/plenary.nvim'}}
	})
	use ({
		'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function()
			vim.cmd('colorscheme tokyonight-night')
		end
	})
	use ({
		'nvim-treesitter/nvim-treesitter',
		{
			run = 'TSUpdate'
		}
	})
	use('tpope/vim-fugitive')
	use('tpope/vim-commentary')
	use('airblade/vim-gitgutter')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
				{'neovim/nvim-lspconfig'},             -- Required
				{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
	use {
		'rcarriga/nvim-dap-ui',
		requires = {
			'mfussenegger/nvim-dap'
		}
	}
	use {'nvim-telescope/telescope-dap.nvim'}
	use {'fidian/hexmode'}
	use {'christoomey/vim-tmux-navigator'}
	--use {
	--	--'jiangmiao/auto-pairs'
	--	'windwp/nvim-autopairs',
	--	config = function()
	--		require("nvim-autopairs").setup{}
	--	end
	--}
--	use {
--		'itchyny/vim-gitbranch',
--		requires = {
--			'itchyny/lightline.vim'
--		}
--	}
	use {
		'nvim-lualine/lualine.nvim'
	}
end)

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
end)

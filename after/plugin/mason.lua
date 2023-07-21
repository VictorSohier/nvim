require('mason').setup({
})
require('mason-lspconfig').setup()
require('mason-nvim-dap').setup({
	handlers = {
		function(config)
			config.configurations[1].program = function()
				return vim.fn.input(
				"Path to executable: ",
				vim.fn.getcwd(),
				"file"
				)
			end

			require('mason-nvim-dap').default_setup(config)
		end
	}
})

local lsp = require('lsp-zero')
lsp.extend_cmp()

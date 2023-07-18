require('mason').setup()
require('mason-lspconfig').setup()
require('mason-nvim-dap').setup({
	handlers = {
		function(config)
			require('mason-nvim-dap').default_setup(config)
		end
	}
})

local lsp = require('lsp-zero')
lsp.extend_cmp()

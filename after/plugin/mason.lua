require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lsp-zero')
lsp.extend_cmp()

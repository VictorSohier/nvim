local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.keymap.set("n", "<silent>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<silent>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<silent>gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<silent>gH", vim.lsp.buf.code_action)
vim.keymap.set("n", "<silent>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<silent>F2", vim.lsp.buf.rename)

local cmp = require'cmp'
cmp.setup {
	mapping = cmp.mapping.preset.insert({
		['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
		['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		},
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { 'i', 's' }),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'vsnip' },
		{ name = 'path' },
		{ name = 'buffer' },
	},
	snippet = {
		expand = function(args)
			-- luasnip.lsp_expand(args.body)
			vim.fn["vsnip#anonymous"](args.body)
		end
	}
}


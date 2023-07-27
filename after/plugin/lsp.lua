local lspZero = require('lsp-zero').preset({})
local lsp = require('lspconfig')

lspZero.on_attach(function(client, bufnr)
	lspZero.default_keymaps({buffer = bufnr})
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end)
	vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end)
	vim.keymap.set("n", "gH", function() vim.lsp.buf.code_action() end)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
	vim.keymap.set("n", "F2", function() vim.lsp.buf.rename() end)
end)

-- (Optional) Configure lua language server for neovim
lsp.lua_ls.setup(lspZero.nvim_lua_ls())

lsp.omnisharp.setup {
	filetypes = {
		"cs",
		"vb",
		"cshtml",
		"razor",
		"aspnetcorerazor"
	}
}

lsp.emmet_ls.setup {
	filetypes = {
		"astro",
		"css",
		"eruby",
		"html",
		"htmldjango",
		"javascript",
		"javascriptreact",
		"less",
		"pug",
		"sass",
		"scss",
		"svelte",
		"typescriptreact",
		"vue",
		"cshtml",
		"razor",
		"aspnetcorerazor"
	}
}

lspZero.setup()

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


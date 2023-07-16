vim.g.mapleader = " "
vim.keymap.set("n", "<silent>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<silent>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<silent>gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<silent>gH", vim.lsp.buf.code_action)
vim.keymap.set("n", "<silent>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<silent>F2", vim.lsp.buf.rename)

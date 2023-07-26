vim.o.guicursor = ""
vim.o.encoding = "utf-8"
vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.colorcolumn = "80,120"
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.wrap = false
vim.o.diffopt = "internal,filler,closeoff,vertical"
vim.o.nu = true
vim.o.ignorecase = true
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 999
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.cmdheight = 1
vim.o.shortmess = "filnxtToOCFc"
vim.o.signcolumn = "yes"
vim.o.updatetime = 750
vim.o.termguicolors = true
vim.o.updatetime = 50

vim.api.nvim_create_autocmd(
	{
		"BufEnter",
		"FocusGained",
		"InsertLeave",
		"WinEnter",
	},
	{
		callback = function ()
			if vim.api.nvim_get_mode().mode ~= "i" then
				vim.opt.relativenumber = true
			end
		end
	}
)

vim.api.nvim_create_autocmd(
	{
		"BufLeave",
		"FocusLost",
		"InsertEnter",
		"WinLeave",
	},
	{
		callback = function ()
			vim.opt.relativenumber = false
		end
	}
)

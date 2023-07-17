vim.opt.guicursor = ""
vim.opt.encoding = "utf-8"
vim.opt.completeopt="menuone,noinsert,noselect"
vim.opt.colorcolumn="80,120"
vim.opt.splitright=true
vim.opt.splitbelow=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.autoindent=true
vim.opt.wrap=false
vim.opt.diffopt="internal,filler,closeoff,vertical"
vim.opt.number=true
vim.opt.ignorecase=true
vim.opt.foldmethod="syntax"
vim.opt.foldlevel=999
vim.opt.smartcase=true
vim.opt.incsearch=true
vim.opt.hidden=true
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.cmdheight=1
vim.opt.shortmess="filnxtToOCFc"
vim.opt.signcolumn="yes"
vim.opt.updatetime=750
vim.opt.termguicolors=true
vim.opt.updatetime = 50
vim.opt.clipboard = "+"

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

local lualine = require('lualine')

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'tokyonight',
		sections = {
			lualine_a = { 'mode', 'paste' },
			lualine_b = { 'branch', 'readonly', 'filename', 'modified' }
		}
	}
}

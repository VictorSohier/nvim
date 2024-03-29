local dap = require('dap')
local dapuiwidgets = require('dap.ui.widgets')
local dapui = require('dapui')
local telescope = require('telescope')

dapui.setup()
telescope.setup()
telescope.load_extension('dap')

vim.keymap.set("n", "<F9>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<S-F11>", dap.step_out)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<S-F9>", dap.repl.open)
vim.keymap.set("n", "<leader>di", dapuiwidgets.hover)
--vim.keymap.set("v", "<leader>di", dapuiwidgets.visual_hover)
vim.keymap.set("n", "<leader>dq", dapui.toggle)

vim.keymap.set("n", "<leader>df", telescope.extensions.dap.frames)
vim.keymap.set("n", "<leader>db", telescope.extensions.dap.list_breakpoints)

vim.fn.sign_define('DapBreakpoint', {text='●', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▸', texthl='', linehl='', numhl=''})

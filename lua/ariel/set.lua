vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.cmd 'colorscheme habamax'

vim.cmd 'set number'

vim.opt.scrolloff = 8

vim.cmd('packadd nvim.undotree')
vim.keymap.set("n", "<leader>u", require("undotree").open)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-n><C-m>", ':set invrelativenumber<CR>', { noremap = true })
vim.keymap.set("n", "<C-n><C-n>", ':set invnumber<CR>', { noremap = true })

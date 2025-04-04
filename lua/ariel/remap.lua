vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-n><C-m>", ":set invrelativenumber<CR>", { noremap = true })
vim.keymap.set("n", "<C-n><C-n>", ":set invnumber<CR>", { noremap = true })

-- Move selected block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay in visual mode after indentation
vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })

-- LSP
vim.keymap.set("n", "gdd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })
-- vim.lsp.buf.implementation() <== gri
-- vim.lsp.buf.rename()         <== grn
-- vim.lsp.buf.references()     <== grr

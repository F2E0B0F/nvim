vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap("n", "<leader>c", ":Explore " .. vim.fn.stdpath("config") .. "<CR>",
	{ noremap = true})

-- Keybindings to adjust windows
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w><", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>-", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>+", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true })

local opt = { noremap = true }
-- LSP key bindings
-- rename
vim.api.nvim_set_keymap("n", "<leader>r", ":lua vim.lsp.buf.rename<CR>", opt)
-- code action
vim.api.nvim_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opt)
-- go to definition
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opt)
-- show hover
vim.api.nvim_set_keymap("n", "gh", ":lua vim.lsp.buf.hover()<CR>", opt)
-- format
vim.api.nvim_set_keymap("n", "<leader>=", ":lua vim.lsp.buf.format { async = true }<CR>", opt)


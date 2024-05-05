vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_set_keymap("n", "<leader>c", ":E " .. vim.fn.stdpath("config") .. "<CR>",
	{ noremap = true})

-- Keybindings to adjust windows
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w><", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>-", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>+", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true })

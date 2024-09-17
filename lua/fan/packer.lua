local packer_ensurance = function()
	local inst_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if vim.fn.empty(vim.fn.glob(inst_path)) > 0 then
		local cmd = 'git clone --depth 1 https://github.com/wbthomason/packer.nvim ' .. inst_path
		vim.fn.system(cmd)
		vim.cmd([[packadd packer.nvim]])
	end
	return vim.fn.empty(vim.fn.glob(inst_path))
end

local is_exist = packer_ensurance() <= 0
if is_exist then
	print('packer completed')
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- nvim CMP packages
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- For vsnip users.
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Git completion source
	use({"petertriho/cmp-git", requires = "nvim-lua/plenary.nvim"})

	-- Java LSP
	use 'mfussenegger/nvim-jdtls'

	-- Color scheme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- nvim-tree (File Explorer)
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
end)

-- Automatically install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Note: Must happen before plugins are required (otherwise wrong leader will be used )
vim.g.mapleader = " "
vim.g.maplocalleader = " "

return require("lazy").setup({ 
	"nvim-lua/plenary.nvim", -- Useful lua functions used by many plugins

	{ "nvim-telescope/telescope.nvim", tag = "0.1.1" },

	-- theme
	"folke/tokyonight.nvim",

	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- cmp plugins
	"hrsh7th/nvim-cmp", -- completion engine plugin

	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"hrsh7th/cmp-nvim-lsp", --  lsp completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions

	-- snippets
	"L3MON4D3/LuaSnip", -- snippet engine
	"rafamadriz/friendly-snippets", -- collection of useful snippets
	-- lsp
	"neovim/nvim-lspconfig", -- configs for nvim lsp
	"williamboman/mason.nvim", -- installer for lsp servers
	"williamboman/mason-lspconfig.nvim", -- make mason work with lspconfig
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
	},
	"christoomey/vim-tmux-navigator",
	"windwp/nvim-autopairs",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"numToStr/Comment.nvim",
	"lewis6991/gitsigns.nvim",
	"nvim-lualine/lualine.nvim",
	"windwp/nvim-ts-autotag",
	"lukas-reineke/indent-blankline.nvim",
	"ThePrimeagen/harpoon",
	"folke/trouble.nvim",
	"tpope/vim-fugitive",
	"romgrk/barbar.nvim",
	"rebelot/kanagawa.nvim",
	"github/copilot.vim",
})

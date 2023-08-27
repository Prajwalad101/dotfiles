vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Have packer manage itself

	use("nvim-lua/plenary.nvim") -- Useful lua functions used by many plugins

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.1" })

	-- theme
	use("folke/tokyonight.nvim")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({ "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } })

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- completion engine plugin

	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-nvim-lsp") --  lsp completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("rafamadriz/friendly-snippets") -- collection of useful snippets
	-- lsp
	use("neovim/nvim-lspconfig") -- configs for nvim lsp
	use("williamboman/mason.nvim") -- installer for lsp servers
	use("williamboman/mason-lspconfig.nvim") -- make mason work with lspconfig
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
	})
	use("christoomey/vim-tmux-navigator")
	use("windwp/nvim-autopairs")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("numToStr/Comment.nvim")
	use("lewis6991/gitsigns.nvim")
	use("nvim-lualine/lualine.nvim")
	use("windwp/nvim-ts-autotag")
	use("lukas-reineke/indent-blankline.nvim")
	use("github/copilot.vim")
	use("ThePrimeagen/harpoon")
	use("folke/trouble.nvim")
	use("akinsho/toggleterm.nvim")
	use("tpope/vim-fugitive")
	use("romgrk/barbar.nvim")
end)

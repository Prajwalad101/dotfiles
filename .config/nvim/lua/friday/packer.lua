vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Have packer manage itself

  use 'nvim-lua/plenary.nvim' -- Useful lua functions used by many plugins

  -- Navigation between tmux and neovim
  use "christoomey/vim-tmux-navigator"

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1'}

  -- theme
  use 'folke/tokyonight.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'catppuccin/nvim';

	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })

	use { 'nvim-tree/nvim-tree.lua',
	requires = { 'nvim-tree/nvim-web-devicons'}
	}

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- completion engine plugin   

  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-nvim-lsp" --  lsp completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- collection of useful snippets

  -- lsp
  use "neovim/nvim-lspconfig" -- configs for nvim lsp
  use "williamboman/mason.nvim" -- installer for lsp servers
  use "williamboman/mason-lspconfig.nvim" -- make mason work with lspconfig
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use "windwp/nvim-autopairs"
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'numToStr/Comment.nvim'

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Status statusline
  use "nvim-lualine/lualine.nvim"
  use "windwp/nvim-ts-autotag"

  use "akinsho/bufferline.nvim"

  use "famiu/bufdelete.nvim"

  use "lukas-reineke/indent-blankline.nvim"

  -- Copilot
  use "github/copilot.vim"

  -- Harpoon
  use "ThePrimeagen/harpoon"

  -- Trouble
  use "folke/trouble.nvim"

  -- Vim obsession
  use "tpope/vim-obsession"

end)

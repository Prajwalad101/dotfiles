require("nvim-treesitter.configs").setup({

	ensure_installed = { "javascript", "typescript", "c", "lua", "yaml" },

	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
	autopairs = { enable = true },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	autotag = {
		enable = true,
	},
})

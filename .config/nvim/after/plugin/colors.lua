require("tokyonight").setup({
  style = "night",
})

--[[ require("kanagawa").setup({
	transparent = true,
}) ]]

--[[ require("catppuccin").setup({
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		lsp_trouble = true,
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		mason = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
	},
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	transparent_background = true,
	no_italic = false,
	custom_highlights = function()
		-- light gray
		return {
			CursorLine = { bg = "#292936" },
		}
	end,
}) ]]

vim.cmd.colorscheme("catppuccin")

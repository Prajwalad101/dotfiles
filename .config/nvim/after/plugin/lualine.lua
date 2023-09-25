local lualine = require("lualine")

lualine.setup({
	options = {
		theme = "kanagawa",
	},
	sections = {
		-- lualine_a = { "mode" },
		lualine_a = { "" },
		lualine_b = { "branch", "diagnostics" },
		lualine_c = { "filename", "filesize", "windows" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_z = { "location" },
	},
})

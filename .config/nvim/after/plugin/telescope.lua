local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	pickers = {
		buffers = {
			sort_mru = true,
			mappings = {
				i = {
					["<c-d>"] = "delete_buffer",
				},
			},
		},
	},
})

local telescope = require("telescope")

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

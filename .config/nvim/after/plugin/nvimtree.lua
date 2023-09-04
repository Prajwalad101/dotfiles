-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_nvim_tree()
	require("nvim-tree.api").tree.open() -- opens tree
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- change colors for nvim tree highlight groups
vim.cmd([[highlight NvimTreeGitStaged guifg=#93cc4f gui=nocombine]])
vim.cmd([[highlight NvimTreeGitDirty guifg=#cc4f54 gui=nocombine]])

-- empty setup using defaults
require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
	view = {
		width = 35,
		adaptive_size = false,
	},
	renderer = {
		root_folder_label = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
			},
			git_placement = "after",
			glyphs = {
				folder = {
					default = "󰉋",
					open = "󰝰",
					empty = "󰉖",
					empty_open = "󰷏",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "M",
					staged = "M",
					unmerged = "",
					renamed = "R",
					untracked = "?",
					deleted = "D",
				},
			},
		},
	},
})

-- remaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- tree toggle

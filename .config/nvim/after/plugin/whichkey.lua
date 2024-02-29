local wk = require("which-key")
-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local trouble = require("trouble")

local builtin = require("telescope.builtin")
wk.register({
	["<leader>"] = {
		-- telescope
		f = {
			name = "find",
			f = { builtin.find_files, "find file" },
			g = { builtin.live_grep, "live grep" },
			b = { builtin.buffers, "buffers" },
			c = { builtin.git_commits, "git commits" },
			s = { builtin.grep_string, "grep string" },
		},
		-- trouble
		x = {
			name = "trouble",
			x = {
				function()
					trouble.open("workspace_diagnostics")
				end,
				"workspace diagnostics",
			},
			d = {
				function()
					trouble.open("document_diagnostics")
				end,
				"document diagnostics",
			},
			q = {
				function()
					trouble.open("quickfix")
				end,
				"quickfix diagnostics",
			},
			l = {
				function()
					trouble.open("loclist")
				end,
				"loclist diagnostics",
			},
		},
		-- harpoon
		h = {
			name = "harpoon",
			a = { mark.add_file, "add file" },
			t = { ui.toggle_quick_menu, "toggle menu" },
		},
	},
})

local wk = require("which-key")
-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

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
			x = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace diagnostics" },
			d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document diagnostics" },
		},
		-- harpoon
		h = {
			name = "harpoon",
			a = { mark.add_file, "add file" },
			t = { ui.toggle_quick_menu, "toggle menu" },
		},
	},
})

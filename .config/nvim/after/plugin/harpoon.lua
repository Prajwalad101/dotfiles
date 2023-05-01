local keymap = vim.keymap.set

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap("n", "<leader>a", mark.add_file)
keymap("n", "<C-e>", ui.toggle_quick_menu)

--[[ keymap("n", "<S-h>", function() ui.nav_file(1) end)
keymap("n", "<S-t>", function() ui.nav_file(2) end)
keymap("n", "<S-n>", function() ui.nav_file(3) end)
keymap("n", "<S-s>", function() ui.nav_file(4) end) ]]

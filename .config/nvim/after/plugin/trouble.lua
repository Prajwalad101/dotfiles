require("trouble").setup({
  auto_close = true
})

local keymap = vim.keymap.set

local opts = {noremap = true, silent = true}

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)


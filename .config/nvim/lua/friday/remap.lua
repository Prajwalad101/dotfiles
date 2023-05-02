-- Shorten function name
local keymap = vim.keymap.set
-- Remap space as leader key
vim.g.mapleader = " "

keymap("i", "<C-c>", "<Esc>")

-- Save current buffer
keymap("n", "<C-s>", ":w<CR>")
keymap("n", "<leader>qq", ":q<CR>")

-- Move Lines
keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Navigating buffers
keymap("n", "<S-t>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprev<CR>")
keymap("n", "<leader>bs", ":buffers<CR>:buffer ")
keymap("n", "<leader>bd", ":Bdelete<CR>")

-- Stay in visual mode while indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move text in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Shorten function name
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
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

-- Navigate between windows
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Move to previous/next
keymap("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
keymap("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
keymap("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Pin/unpin buffer
keymap("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
keymap("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Magic buffer-picking mode
keymap("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
keymap("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
keymap("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
keymap("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
keymap("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

--[[ keymap("n", "<S-l>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprev<CR>")
keymap("n", "<leader>bs", ":buffers<CR>:buffer ")
keymap("n", "<leader>bd", ":Bdelete<CR>") ]]

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

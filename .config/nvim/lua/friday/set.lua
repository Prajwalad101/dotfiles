local options = {
    nu = true, -- line numbers
    relativenumber = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    autoindent = false,
    wrap = true,
    linebreak = true,
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    cursorline = true,
    scrolloff = 8,
    signcolumn = "yes",
    updatetime = 50,
    colorcolumn = "80",
    backupcopy = 'yes',
}

vim.opt.shortmess:append "c"

for k, v in pairs(options)do
    vim.opt[k] = v
end

-- set mapleader to space
vim.g.mapleader = " "

vim.cmd [[set iskeyword+=-]]  -- treats +=- as a word

-- disable continuation of comments to next line

-- vim.cmd [[set formatoptions-=o]]

-- create autocmd to disable continuation of comments to next line
vim.api.nvim_create_autocmd({"BufRead", "BufWinEnter"}, {pattern = "*", command = "set formatoptions-=cro"})

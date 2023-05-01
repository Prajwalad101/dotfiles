local indent_blankline = require("indent_blankline")

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#363646 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#938AA9 gui=nocombine]]

-- oetuhoteuh
indent_blankline.setup({
  show_current_context = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
  }
})


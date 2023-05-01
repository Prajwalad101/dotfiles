--[[ require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent"
  }
})
vim.cmd "colorscheme tokyonight" ]]


--[[ require("kanagawa").setup({
  transparent = false
})
vim.cmd "colorscheme kanagawa" ]]

require("catppuccin").setup({
  flavor = "mocha",
  transparent_background = true,
  no_italic = false,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
  }
})

vim.cmd.colorscheme "catppuccin"

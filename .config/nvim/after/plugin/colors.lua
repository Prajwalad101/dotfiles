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
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  transparent_background = true,
  no_italic = false,
  custom_highlights = function ()
    -- light gray
    return {
      CursorLine = { bg = "#292936"},
    }
  end,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
  }
})

vim.cmd.colorscheme "catppuccin"

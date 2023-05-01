--[[ Themes Reference
https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md ]]

local lualine = require("lualine")

-- local theme = require 'lualine.themes.nightfly'

lualine.setup({
  options = {
  theme = "catppuccin",
  },
  sections = {
    lualine_a = {},
    lualine_b = {'branch', 'diagnostics'}
  }
})

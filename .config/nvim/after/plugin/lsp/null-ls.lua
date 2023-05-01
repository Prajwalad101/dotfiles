local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- avoid default formatters attached on a server
local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        timeout_ms = 2000,
        filter = function(client)
            return client.name == "null-ls"
        end,
        bufnr = bufnr,
    })
end

null_ls.setup({
  sources = {
    formatting.prettierd,
    diagnostics.eslint_d,
    formatting.rustfmt
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function ()
          lsp_formatting(bufnr)
        end
      })
    end
  end,
})

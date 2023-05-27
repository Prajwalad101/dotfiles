local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- enable keybinds for available lsp server
local on_attach = function(_, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "vd", vim.diagnostic.open_float, opts) -- view diagnostics
end

-- enables lsp autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

local lsp_flags = {
	debounce_text_changes = 50,
}

lspconfig["html"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig["gopls"].setup({
	capabilities = capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		gopls = {
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
				unreachable = true,
			},
		},
	},
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

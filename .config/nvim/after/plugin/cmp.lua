local cmp = require("cmp")
require("luasnip/loaders/from_vscode").lazy_load()

local kind_icons = {
	Text = "󰊄",
	Method = "m",
	Function = "󰊕",
	Constructor = "",
	Field = "",
	Variable = "󰫧",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "v",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = " ",
}

local compare = cmp.config.compare

cmp.setup({
	-- specify a snippet engine
	--[[ enabled = function()
		-- disable completion in comments
		local context = require("cmp.config.context")
		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == "c" then
			return true
		else
			return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
		end
	end, ]]
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sorting = {
		priority_weight = 2,
		comparators = {
			-- Below is the default comparitor list and order for nvim-cmp
			compare.exact,
			compare.recently_used,
			compare.score,
			compare.locality,
			compare.kind,
		},
	},
	-- key mappings
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	-- sources for the engine (order of precedence)
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[Snip]",
				buffer = "[Buff]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
})

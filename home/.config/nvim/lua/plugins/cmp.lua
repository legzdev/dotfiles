local function config()
	require("luasnip.loaders.from_vscode").lazy_load()
	local luasnip = require("luasnip")

	local cmp = require("cmp")
	local lspkind = require("lspkind")

	cmp.setup({
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
		}),

		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},

		window = { -- cool
			completion = cmp.config.window.bordered(),
			dcumentation = cmp.config.window.bordered(),
		},

		-- Preselect first item from autocompletion
		preselect = "item",
		completion = {
			completeopt = "menu,menuone,noinsert",
		},

		mapping = cmp.mapping.preset.insert({
			["<C-Space>"] = cmp.mapping.complete(),

			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.confirm({ select = true })
				else
					fallback()
				end
			end, { "i", "s" }),
		}),

		formatting = {
			format = lspkind.cmp_format({
				mode = "symbol_text",
				maxwidth = {
					menu = 50,
					abbr = 50,
				},
				ellipsis_char = "...",
				show_labelDetails = true,
			}),
		},
	})

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	vim.lsp.config("*", {
		capabilities = capabilities,
	})
end

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"onsails/lspkind.nvim",
		{
			"L3MON4D3/LuaSnip",
			build = "make install_jsregexp",
			dependencies = {
				"rafamadriz/friendly-snippets",
			},
		},
		"saadparwaiz1/cmp_luasnip",
	},
	config = config,
}

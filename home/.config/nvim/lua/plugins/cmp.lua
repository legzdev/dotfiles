local function config()
	local cmp = require("cmp")

	cmp.setup({
		sources = {
			{ name = "nvim_lsp" },
			{ name = "buffer" },
		},

		-- Preselect first item from autocompletion
		preselect = "item",
		completion = {
			completeopt = "menu,menuone,noinsert",
		},

		-- Sets simple autocompletion keybindings
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
	})
end

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
	},
	config = config,
}

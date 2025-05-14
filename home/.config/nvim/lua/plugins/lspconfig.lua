local function config()
	local lspconfig = require("lspconfig")

	lspconfig.bashls.setup({})
	lspconfig.emmet_ls.setup({})

	lspconfig.gopls.setup({
		settings = {
			gopls = {
				buildFlags = {},
			},
		},
	})

	lspconfig.lua_ls.setup({
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	})

	lspconfig.ruff.setup({})
	lspconfig.ts_ls.setup({})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
}

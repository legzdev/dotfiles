local function config()
	require("mason").setup({})
	local isDesktop = require("utils").IsDesktop

	require("mason-tool-installer").setup({
		ensure_installed = {
			"astro-language-server",
			"bash-language-server",
			{ "biome", condition = isDesktop },
			{ "clangd", condition = isDesktop },
			"css-lsp",
			"gofumpt",
			"emmet-language-server",
			{ "lua-language-server", condition = isDesktop },
			"pyright",
			{ "ruff", condition = isDesktop },
			"shellcheck",
			{ "stylua", condition = isDesktop },
			"typescript-language-server",
			"vue-language-server",
		},
	})
end

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = config,
}

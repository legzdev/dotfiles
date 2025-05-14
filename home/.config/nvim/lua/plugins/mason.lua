local function config()
	require("mason").setup({})
	local isDesktop = require("utils").IsDesktop

	require("mason-tool-installer").setup({
		ensure_installed = {
			"bash-language-server",
			--"biome",
			"gofumpt",
			{ "lua-language-server", condition = isDesktop },
			{ "ruff", condition = isDesktop },
			"shellcheck",
			{ "stylua", condition = isDesktop },
			"typescript-language-server",
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

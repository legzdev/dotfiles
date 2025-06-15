local function config()
	require("luasnip.loaders.from_vscode").lazy_load()
end

return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp", -- optional
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = config,
}

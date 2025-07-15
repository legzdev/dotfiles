local function tsdk()
	local local_ts = "node_modules/typescript/lib"
	if vim.fn.isdirectory(local_ts) == 1 then
		return local_ts
	end
	return vim.fn.expand("$MASON/packages") .. "/typescript-language-server" .. "/node_modules/typescript/lib"
end

vim.lsp.enable({
	"astro",
	"bashls",
	"cssls",
	"clangd",
	"emmet_language_server",
	"gopls",
	"html-ls",
	"lua_ls",
	--"pyright",
	"ruff",
	"ts_ls",
	"vue_ls",
})

vim.lsp.config("astro", {
	init_options = {
		typescript = {
			tsdk = tsdk(),
		},
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.config("ts_ls", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.expand("$MASON/packages")
					.. "/vue-language-server"
					.. "/node_modules/@vue/language-server"
					.. "/node_modules/@vue/typescript-plugin",
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"vue",
	},
})

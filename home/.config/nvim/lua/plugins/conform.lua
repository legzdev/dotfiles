local function f(options)
	local function callback(bufnr)
		local conform = require("conform")
		local result = {}

		for _, opt in ipairs(options) do
			if type(opt) == "table" then
				for _, fmt in ipairs(opt) do
					local info = conform.get_formatter_info(fmt, bufnr)

					if info.available then
						table.insert(result, fmt)
						break
					end
				end
			else
				table.insert(result, opt)
			end
		end
		return result
	end
	return callback
end

return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			astro = { "biome" },
			css = { "biome" },
			go = f({ "goimports", { "gofumpt", "gofmt" } }),
			html = { "biome" },
			javascript = { "biome" },
			json = { "biome" },
			jsonc = { "biome" },
			lua = { "stylua" },
			python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
			typescript = { "biome" },
		},
	},
}

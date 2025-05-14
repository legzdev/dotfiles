local function config()
	local onedark = require("onedark")

	onedark.setup({
		style = "dark",
	})

	onedark.load()
end

return {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = config,
}

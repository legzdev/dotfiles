local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazyrepo = "https://github.com/folke/lazy.nvim.git"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local out = vim.fn.system({
		"git",
		"clone",
		"--depth=1",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})

		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	change_detection = {
		enabled = true,
		notify = false,
	},
	checker = {
		enabled = false,
	},
	git = {
		timeout = 24 * 60 * 60,
	},
	install = {
		missing = true,
	},
	spec = {
		{ import = "plugins" },
		"neovim/nvim-lspconfig",
		"b0o/schemastore.nvim",
	},
	ui = {
		size = { width = 1.0, height = 1.0 },
	},
})

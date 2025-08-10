vim.diagnostic.config({
	underline = true,
	update_in_insert = true,
	virtual_text = true,
	severity_sort = true,
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus"
vim.opt.list = true
vim.opt.listchars = {
	tab = "> ",
	-- eol = "⏎",
	space = "·",
	nbsp = "-",
}

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.shiftwidth = 4
-- vim.opt.spell = true
--vim.opt.spelllang = "en,es"
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.wrap = false

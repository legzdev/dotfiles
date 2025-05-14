local actions = {
	{ name = "Conform: Format", command = ":lua require('conform').format({ async = true})" },
	{ name = "LSP: Hover", command = ":lua vim.lsp.buf.hover()" },
	{ name = "LSP: Definition", command = ":lua vim.lsp.buf.definition()" },
	{ name = "LSP: Declaration", command = ":lua vim.lsp.buf.declaration()" },
	{ name = "LSP: Implementation", command = ":lua vim.lsp.buf.implementation()" },
	{ name = "LSP: Type Definition", command = ":lua vim.lsp.buf.type_definition()" },
	{ name = "LSP: References", command = ":lua vim.lsp.buf.references()" },
	{ name = "LSP: Signature Help", command = ":lua vim.lsp.buf.signature_help()" },
	{ name = "LSP: Rename", command = ":lua vim.lsp.buf.rename()" },
	{ name = "LSP: Format", command = ":lua vim.lsp.buf.format({ async = true})" },
	{ name = "LSP: Code Action", command = ":lua vim.lsp.buf.code_action()" },
	{ name = "TODO: Search", command = ":TodoTelescope" },
	{ name = "TODO: Locations", command = ":TodoLocList" },
}

local function entry_maker(entry)
	return {
		value = entry.command,
		display = entry.name,
		ordinal = entry.name,
	}
end

local function attach_mappings(prompt_bufnr, map)
	local function execute_command()
		local selection = require("telescope.actions.state").get_selected_entry()
		require("telescope.actions").close(prompt_bufnr)
		vim.cmd(selection.value)
	end

	map("i", "<CR>", execute_command)
	map("n", "<CR>", execute_command)

	return true
end

local function show_palette()
	local pickers = require("telescope.pickers")
	local finders = require("telescope.finders")
	local config = require("telescope.config").values

	pickers
		.new({}, {
			prompt_title = "Quick Actions",
			finder = finders.new_table({
				results = actions,
				entry_maker = entry_maker,
			}),
			sorter = config.generic_sorter({}),
			attach_mappings = attach_mappings,
		})
		:find()
end

vim.keymap.set({ "n", "i" }, "<C-M-P>", show_palette, { noremap = true, silent = true })

local function config(_, opts)
	local telescope = require("telescope")
	telescope.setup(opts)

	-- NOTE: temporally disabled due to unexpected behaviours

	--telescope.load_extension("cmdline")
	--vim.api.nvim_set_keymap("n", ":", "<cmd>Telescope cmdline<CR>", { noremap = true, desc = "Cmdline" })
	--vim.api.nvim_set_keymap("n", "<leader><leader>", "<cmd>Telescope cmdline<CR>", { noremap = true, desc = "Cmdline" })

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope find keymaps" })
	vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope LSP references" })

	telescope.load_extension("ui-select")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jonarrien/telescope-cmdline.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = config,
	opts = {
		pickers = {
			find_files = {
				find_command = { "fd", "--type=file", "--hidden", "--no-ignore", "--exclude", ".git" },
			},
		},
	},
}

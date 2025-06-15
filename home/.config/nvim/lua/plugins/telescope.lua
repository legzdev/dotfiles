local function config(_, opts)
	local telescope = require("telescope")
	telescope.setup(opts)

	telescope.load_extension("cmdline")
	vim.api.nvim_set_keymap("n", ":", "<cmd>Telescope cmdline<CR>", { noremap = true, desc = "Cmdline" })
	vim.api.nvim_set_keymap("n", "<leader><leader>", "<cmd>Telescope cmdline<CR>", { noremap = true, desc = "Cmdline" })

	local builtin = require("telescope.builtin")
	vim.keymap.set({ "n", "i" }, "<C-p>", builtin.find_files, { desc = "Telescope find files" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jonarrien/telescope-cmdline.nvim",
	},
	config = config,
}

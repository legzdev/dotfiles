return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "Search TODOs" },
	},
	opts = {},
}

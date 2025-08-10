local function config(_, opts)
	require("nvim-tree").setup(opts)

	vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Tree" })
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
	opts = {
		diagnostics = {
			enable = true,
			show_on_dirs = true,
		},
		filters = {
			custom = { "^\\.git" },
			git_ignored = false,
		},
		hijack_directories = {
			enable = false,
			auto_open = false,
		},
		renderer = {
			add_trailing = true,
		},
	},
}

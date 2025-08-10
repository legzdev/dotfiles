local function config(_, opts)
	require("go-tagger").setup(opts)

	vim.keymap.set({ "n", "v" }, "<leader>at", ":AddGoTags<CR>")
	vim.keymap.set({ "n", "v" }, "<leader>rt", ":RemoveGoTags<CR>")
end

return {
	"romus204/go-tagger.nvim",
	config = config,
	opts = {
		skip_private = true,
	},
}

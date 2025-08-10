local function save_buffer()
	local name = vim.api.nvim_buf_get_name(0)
	if name == "" then
		vim.ui.input({ prompt = "Save buffer as: " }, function(input)
			vim.cmd("write " .. input)
		end)
	else
		vim.cmd("write")
	end
end

local function config(_, opts)
	require("bufferline").setup(opts)

	vim.keymap.set("n", "<leader>bdo", "<cmd>BufferLineCloseOthers<CR>")
	vim.keymap.set("n", "<leader>bdj", "<cmd>BufferLineCloseLeft<CR>")
	vim.keymap.set("n", "<leader>bdk", "<cmd>BufferLineCloseRight<CR>")

	vim.keymap.set("n", "<C-n>", "<cmd>:enew<CR>", { desc = "New Buffer" })
	vim.keymap.set("n", "<M-j>", "<cmd>:bp<CR>", { desc = "Previous Buffer" })
	vim.keymap.set("n", "<M-k>", "<cmd>:bn<CR>", { desc = "Next Buffer" })
	vim.keymap.set("n", "<leader>w", "<cmd>:bd<CR>", { desc = "Close Buffer", remap = true })

	vim.keymap.set({ "n", "i" }, "<C-s>", save_buffer, { desc = "Save Current Buffer" })
	vim.keymap.set({ "n", "i" }, "<C-M-s>", "<cmd>wall<CR>", { desc = "Save All Modified Buffers" })
end

return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
	opts = {},
}

local function save_buffer()
	local buf_id = 0 -- current buffer
	local name = vim.api.nvim_buf_get_name(buf_id)

	if name ~= "" then
		vim.cmd("write")
		return
	end

	vim.ui.input({ prompt = "Save buffer as: " }, function(input)
		if input == nil then
			return
		end

		vim.cmd("write " .. input)
	end)
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

-------------- Clipboard --------------
vim.keymap.set("n", "<C-c>", '"+yy', { desc = "Copy current line/selection" })
vim.keymap.set("i", "<C-c>", '<Esc>"+yyi', { desc = "Copy current line/selection" })
vim.keymap.set("v", "<C-c>", "y", { desc = "Copy current selection" })

vim.keymap.set("n", "<C-v>", '"+p', {})
vim.keymap.set("i", "<C-v>", '<Esc>"+pi', {})

vim.keymap.set("n", "<C-x>", '"+dd', {})
vim.keymap.set("i", "<C-x>", '<Esc>"+ddi', {})
vim.keymap.set("v", "<C-x>", '"+d', {})
---------------------------------------

--------------- Buffers ---------------
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>write<CR>", { desc = "Save Current Buffer" })
vim.keymap.set({ "n", "i" }, "<C-M-s>", "<cmd>wall<CR>", { desc = "Save All Modified Buffers" })

vim.keymap.set("n", "<C-n>", "<cmd>:enew<CR>", { desc = "New Buffer" })
vim.keymap.set("n", "<M-j>", "<cmd>:bp<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<M-k>", "<cmd>:bn<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>w", "<cmd>:bd<CR>", { desc = "Close Buffer", remap = true })
---------------------------------------

-- history
vim.keymap.set({ "n", "i" }, "<C-z>", "<cmd>u<CR>", {})
vim.keymap.set("n", "<C-y>", "<C-r>", {})

-- quit
vim.keymap.set({ "n", "i" }, "<C-q>", "<cmd>quit<CR>", { desc = "Quit" })
vim.keymap.set({ "n", "i" }, "<C-M-q>", "<cmd>quitall!<CR>", { desc = "Quit Without Save" })

-- line operations
vim.keymap.set({ "n", "i" }, "<C-up>", "<cmd>m -2<CR>", {})
vim.keymap.set({ "n", "i" }, "<C-down>", "<cmd>m +1<CR>", {})
vim.keymap.set({ "n", "i" }, "<C-d>", "<cmd>t.<CR>", { desc = "Duplicate current line" })

-- lsp
vim.keymap.set({ "n", "i" }, "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.keymap.set({ "n", "i" }, "<F3>", "<cmd>lua vim.lsp.buf.hover()<CR>", {})
vim.keymap.set({ "n", "i" }, "<F4>", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {})

--
vim.keymap.set("n", "rr", "<cmd>Rest run<CR>", {})
vim.keymap.set("n", "<C-b>", "<C-v>", {})
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Tree" })
vim.keymap.set("n", "<M-w>", "<cmd>set wrap!<CR>", { desc = "Toggle Line Wrap" })

vim.keymap.set(
	"n",
	"<leader>tc",
	"<cmd>lua require('config.toggle-checkbox').toggle_checkbox()<CR>",
	{ noremap = true, silent = true }
)

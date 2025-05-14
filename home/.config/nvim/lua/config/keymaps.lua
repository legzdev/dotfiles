-------------- Clipboard --------------
vim.api.nvim_set_keymap("n", "<C-c>", '"+yy', {})
vim.api.nvim_set_keymap("i", "<C-c>", '<Esc>"+yyi', {})
vim.api.nvim_set_keymap("v", "<C-c>", "y", {})

vim.api.nvim_set_keymap("n", "<C-v>", '"+p', {})
vim.api.nvim_set_keymap("i", "<C-v>", '<Esc>"+pi', {})

vim.api.nvim_set_keymap("n", "<C-x>", '"+dd', {})
vim.api.nvim_set_keymap("i", "<C-x>", '<Esc>"+ddi', {})
vim.api.nvim_set_keymap("v", "<C-x>", '"+d', {})
---------------------------------------

--------------- Buffers ---------------
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>write<CR>", { desc = "Save Current Buffer" })
vim.keymap.set({ "n", "i" }, "<C-M-s>", "<cmd>wall<CR>", { desc = "Save All Modified Buffers" })

vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>:enew<CR>", { desc = "New Buffer" })
vim.api.nvim_set_keymap("n", "<C-w>", "<cmd>:bd<CR>", { desc = "Close Buffer" })
vim.api.nvim_set_keymap("n", "<M-j>", "<cmd>:bp<CR>", { desc = "Previous Buffer" })
vim.api.nvim_set_keymap("n", "<M-k>", "<cmd>:bn<CR>", { desc = "Next Buffer" })
---------------------------------------

-- history
vim.keymap.set({ "n", "i" }, "<C-z>", "<cmd>u<CR>", {})
vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>", {})

-- quit
vim.keymap.set({ "n", "i" }, "<C-q>", "<cmd>quit<CR>", { desc = "Quit" })
vim.keymap.set({ "n", "i" }, "<C-M-q>", "<cmd>quit!<CR>", { desc = "Quit Without Save" })

-- line operations
vim.keymap.set({ "n", "i" }, "<C-up>", "<cmd>m -2<CR>", {})
vim.keymap.set({ "n", "i" }, "<C-down>", "<cmd>m +1<CR>", {})
vim.keymap.set({ "n", "i" }, "<C-d>", "<cmd>t.<CR>", { desc = "Duplicate current line" })

-- lsp
vim.keymap.set({ "n", "i" }, "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.keymap.set({ "n", "i" }, "<F3>", "<cmd>lua vim.lsp.buf.hover()<CR>", {})
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {})

--
vim.api.nvim_set_keymap("n", "rr", "<cmd>Rest run<CR>", {})
vim.api.nvim_set_keymap("n", "<C-b>", "<C-v>", {})
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Tree" })
vim.api.nvim_set_keymap("n", "<M-w>", "<cmd>set wrap!<CR>", { desc = "Toggle Line Wrap" })

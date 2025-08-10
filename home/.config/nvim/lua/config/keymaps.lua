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

-- history
vim.keymap.set({ "n", "i" }, "<C-z>", "<cmd>u<CR>", {})
vim.keymap.set("n", "<C-y>", "<C-r>", {})

-- quit
vim.keymap.set({ "n", "i" }, "<C-q>", "<cmd>quit<CR>", { desc = "Quit" })
vim.keymap.set({ "n", "i" }, "<C-M-q>", "<cmd>quitall!<CR>", { desc = "Quit Without Save" })

-- line operations
vim.keymap.set({ "n", "i" }, "<M-up>", "<cmd>m -2<CR>", {})
vim.keymap.set({ "n", "i" }, "<M-down>", "<cmd>m +1<CR>", {})
vim.keymap.set({ "n", "i" }, "<C-d>", "<cmd>t.<CR>", { desc = "Duplicate current line" })

--
vim.keymap.set("n", "<C-b>", "<C-v>", {})
vim.keymap.set("n", "<M-w>", "<cmd>set wrap!<CR>", { desc = "Toggle Line Wrap" })

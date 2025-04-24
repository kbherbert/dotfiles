vim.g.mapleader = " "

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<C-l>", "<cmd>tabn<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<C-h>", "<cmd>tabp<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>te", "<cmd>tabnew .<CR>", { desc = "New tab in directory/explorer" })

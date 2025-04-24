vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Rex, { desc = "Open file explorer" })

-- Primeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<C-l>", "<cmd>tabn<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<C-h>", "<cmd>tabp<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>te", "<cmd>tabnew .<CR>", { desc = "New tab in directory/explorer" })

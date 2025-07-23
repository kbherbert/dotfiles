vim.keymap.set("n", "<leader>pv", vim.cmd.Rex, { desc = "Open file explorer" })

-- [Y]ank [P]ath to system clipboard
local function copy_relative_path()
  local relative_path = vim.fn.expand('%:p')
  vim.fn.setreg('+', relative_path)
  vim.notify('Copied: ' .. relative_path)
end

vim.keymap.set("n", "<leader>yp", copy_relative_path, { desc = "Copy path to clipboard" })

-- Primeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })

-- Buffers
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close buffer" })

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>te", "<cmd>tabnew .<CR>", { desc = "New tab in directory/explorer" })
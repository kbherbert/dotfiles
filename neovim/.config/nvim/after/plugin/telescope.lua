local builtin = require('telescope.builtin')

-- Git
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git Status" })

-- Files
local function find_all_files()
  builtin.find_files({ hidden = true })
end

vim.keymap.set('n', '<leader>pf', find_all_files, { desc = 'Telescope find all files (including hidden)' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope list buffers' })
vim.keymap.set('n', '<leader>pr', builtin.oldfiles, { desc = 'Telescope find recent files' })
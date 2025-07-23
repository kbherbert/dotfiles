local api = require "nvim-tree.api"

local function collapse()
  api.tree.collapse_all({ keep_buffers = true })
end

local resize = function(value)
  return function() api.tree.resize({ relative = value }) end
end

vim.keymap.set("n", "<C-b>", api.tree.toggle, { desc = "nvim-tree: Toggle" })
vim.keymap.set("n", "<leader>e", collapse, { desc = "nvim-tree: Collapse All: Keep Buffers" })
vim.keymap.set("n", "<leader>f", api.tree.focus, { desc = "nvim-tree: Focus: Scroll From Buffer" })
vim.keymap.set("n", "<C-A-Right>", resize(5), { desc = "nvim-tree: Increase Window Size" })
vim.keymap.set("n", "<C-A-Left>", resize(-5), { desc = "nvim-tree: Decrease Window Size" })
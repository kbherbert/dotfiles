vim.keymap.set("n", "<leader>pv", vim.cmd.Rex, { desc = "Open file explorer" })

-- [Y]ank [P]ath to system clipboard
local function copy_relative_path()
  local file_path = vim.api.nvim_buf_get_name(0)
  if file_path == '' then
    vim.notify('No file path available for current buffer', vim.log.levels.WARN)
    return
  end

  local file_dir = vim.fn.fnamemodify(file_path, ':h')
  local git_root_result = vim.fn.systemlist({ 'git', '-C', file_dir, 'rev-parse', '--show-toplevel' })
  if vim.v.shell_error ~= 0 then
    vim.notify('Current file is not inside a Git repository', vim.log.levels.WARN)
    return
  end

  local git_root = git_root_result[1]
  local relative_path = vim.fs.relpath(file_path, git_root)
  if not relative_path then
    vim.notify('Unable to determine path relative to Git root', vim.log.levels.WARN)
    return
  end

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
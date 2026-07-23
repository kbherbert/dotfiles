local builtin = require('telescope.builtin')

-- Git
vim.keymap.set("n", "<leader>gs", function()
  builtin.git_status({
    layout_strategy = "vertical", 
    layout_config = { preview_height = 0.6 },
  })
end, { desc = "Telescope git status" })

-- Files
local function find_all_files()
  builtin.find_files({ hidden = true })
end

local function live_grep()
  builtin.live_grep({
    additional_args = function(opts)
      return { "--hidden" }
    end,
  })
end

local function grep_word_under_cursor()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({
    search = word,
    additional_args = function(opts)
      return { "--hidden" }
    end,
  })
end

vim.keymap.set('n', '<leader>ff', find_all_files, { desc = 'Telescope find all files (including hidden)' })
vim.keymap.set('n', '<leader>fw', live_grep, { desc = 'Telescope live grep (including hidden)' })
vim.keymap.set('v', 'F', grep_word_under_cursor, { desc = 'Telescope grep word under cursor in visual mode' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope find files in git project' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files in git project' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope list buffers' })
vim.keymap.set('n', '<leader>pr', builtin.oldfiles, { desc = 'Telescope find recent files' })

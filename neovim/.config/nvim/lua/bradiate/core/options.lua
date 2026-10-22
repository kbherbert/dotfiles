vim.opt.showmode = false -- because we have lualine

-- explore settings
vim.cmd("let g:netrw_liststyle = 3")

-- formatting
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.colorcolumn = "140"
vim.opt.relativenumber = true

-- Searching: make search case-insensitive by default, case-sensitive if uppercase present
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep a 1-column gutter visible at all times
vim.opt.signcolumn = "yes"

-- colors and themes
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- system
vim.opt.clipboard:append("unnamedplus")

-- native diagnostics
vim.diagnostic.config({
  virtual_text = true, -- inline messages
  signs = true, -- gutter
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Ghostty tab title
vim.opt.title = true

local function update_title()
  local file_dir = vim.fn.expand("%:p:h")
  local dir = (file_dir ~= "" and vim.fn.isdirectory(file_dir) == 1) and file_dir or vim.fn.getcwd()

  local root = vim.fn.systemlist({ "git", "-C", dir, "rev-parse", "--show-toplevel" })[1]
  if vim.v.shell_error ~= 0 or not root or root == "" then
    root = dir
  end

  vim.opt.titlestring = vim.fn.fnamemodify(root, ":t")
end

vim.api.nvim_create_autocmd({ "VimEnter", "DirChanged", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("GhosttyTitle", { clear = true }),
  callback = update_title,
})

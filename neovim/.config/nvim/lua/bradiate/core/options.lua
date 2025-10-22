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

-- Keep a 1-column gutter visible at all times
vim.opt.signcolumn = "yes"

-- colors and themes
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- system
vim.opt.clipboard:append("unnamedplus")

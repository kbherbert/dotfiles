-- explore settings
vim.cmd("let g:netrw_liststyle = 3")

-- formatting
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- colors and themes
vim.termguicolors = true
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])

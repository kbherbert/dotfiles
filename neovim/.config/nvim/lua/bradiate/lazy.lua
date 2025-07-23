-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Critical nvim settings go here
vim.g.mapleader = " "
vim.g.loaded_netrw = 1 -- Disable netrw because nvim-tree
vim.g.loaded_netrwPlugin = 1  -- Disable netrw because nvim-tree

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { import = "bradiate.plugins" },
  },
  ui = {
    backdrop = 100,
    border = "rounded"
  },
  -- the theme Lazy will use when new plugins are installed
  -- this is not the GUI itself; that is controlled by primary theme
  install = { colorscheme = { "catppuccin" } },
})


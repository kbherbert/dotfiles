return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        file_ignore_patterns = {
          "dist",
          "node_modules",
          ".git/",
          ".hg/",
          ".svn/",
          "__pycache__",
          "%.egg-info",
          "%.egg",
          "%.tar.gz",
          "%.zip",
        },
      }
    })
  end,
}

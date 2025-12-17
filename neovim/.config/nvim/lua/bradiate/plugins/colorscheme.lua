return {
  "catppuccin/nvim",
  name = "catppuccin", -- the name in Lazy plugin UI
  priority = 1000,
  lazy = false,
  config = function()
    local catppuccin = require("catppuccin")

    --https://github.com/catppuccin/nvim/tree/main?tab=readme-ov-file#configuration
    catppuccin.setup {
      transparent_background = true,
    }

    vim.cmd("colorscheme catppuccin-mocha")
  end
}

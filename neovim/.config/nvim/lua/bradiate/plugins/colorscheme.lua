return {
  "catppuccin/nvim",
  name = "catppuccin", -- the name in Lazy plugin UI
  priority = 1000,
  lazy = false,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup {
      --https://github.com/catppuccin/nvim/tree/main?tab=readme-ov-file#configuration
    }

    vim.cmd("colorscheme catppuccin-macchiato")
  end
}

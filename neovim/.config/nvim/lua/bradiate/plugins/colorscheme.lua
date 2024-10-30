return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      contrast = "medium",
      italic = {
        strings = false
      }
    }
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "2nthony/vitesse.nvim",
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    }
  }
}

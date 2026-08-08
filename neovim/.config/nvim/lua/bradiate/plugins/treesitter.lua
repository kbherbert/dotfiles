return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({})
    require("nvim-treesitter").install({ "json", "c_sharp", "python", "sql", "yaml" })
  end,
}

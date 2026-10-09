return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({})
    require("nvim-treesitter").install({
      "json",
      "c_sharp",
      "python",
      "sql",
      "yaml",
      "angular",
      "html",
      "css",
      "scss",
      "typescript",
      "javascript",
    })
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("WebTreesitter", { clear = true }),
      pattern = { "typescript", "javascript", "html", "htmlangular", "css", "scss" },
      callback = function(args)
        local angular_html = vim.bo[args.buf].filetype == "html"
          and vim.fs.root(args.buf, { "angular.json", "nx.json" }) ~= nil
        vim.treesitter.start(args.buf, angular_html and "angular" or nil)
      end,
    })
  end,
}

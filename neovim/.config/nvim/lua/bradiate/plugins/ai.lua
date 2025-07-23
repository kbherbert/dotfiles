return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    vim.g.copilot_filetypes = {
      ["*"] = true,
      ["plaintext"] = false,
      ["markdown"] = false,
      ["scminput"] = false,
      ["json"] = false,
      ["properties"] = false,
    }
  end
}

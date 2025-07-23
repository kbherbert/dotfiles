return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        separator_style = 'thin',
        always_show_bufferline = false,
        mode = "buffers",
        offsets = {
          {
            filetype = "NvimTree",
          }
        }
   
      }
    }
  end
}

if vim.g.vscode then
  return {}
else
  return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local lualine = require("lualine")

      local filename = {
        'filename',
        file_status = true,
        path = 4, -- 4: Filename and parent dir, with tilde as the home directory
        shorting_target = 40,
      }
      
      lualine.setup({
        options = { 
          theme = 'catppuccin-nvim',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = ''},
        },
        sections = {
          lualine_c = { filename},
          lualine_x = { 'encoding', 'filetype' },
        }
      })
    end
  }
end

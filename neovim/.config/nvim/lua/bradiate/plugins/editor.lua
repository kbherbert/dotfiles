return {
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 500,
      },
    }
  },
  {
    'xiyaowong/virtcolumn.nvim',
    event = { 'BufReadPre', 'BufNewFile' }
  },
	{
    'mcauley-penney/visual-whitespace.nvim',
    config = true,
    event = "ModeChanged *:[vV\22]", -- optionally, lazy load on entering visual mode
    opts = {
      enabled = true,
      highlight = { link = "Visual", default = true },
      list_chars = {
        space = '·',
        tab = '→',
      },
      fileformat_chars = {
        unix = '',
      },
      ignore = {
        filetypes = {},
        buftypes = {}
      }
    }
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '▏',
      },
      scope = {
        enabled = false,
      },
      exclude = {
        filetypes = {
          'netrw',
        },
      },
    },
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local autopairs = require("nvim-autopairs")

      autopairs.setup({
        check_ts = true,
        ts_config = {
          javascript = { "string", "template_string" },
        },
      })
    end
  },
}

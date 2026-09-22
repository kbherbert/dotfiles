return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
      -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
      default_file_explorer = false,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["g?"] = false,
        ["<CR>"] = "actions.select",
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-t>"] = false,
        ["<C-p>"] = false,
        ["<C-c>"] = false,
        ["<C-l>"] = false,
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = false,
        ["~"] = false,
        ["gs"] = false,
        ["gx"] = false,
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = false,
      },
    },
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local nvimtree = require("nvim-tree")

      local opts = {
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        view = {
          side = "left",
          width = {
            min = 30,
            max = 65,
            padding = 3,
          },
          preserve_window_proportions = true,
        },
        renderer = {
          root_folder_label = false,
          indent_markers = { enable = true },
        },
        filters = { -- Filters-out (excludes) the display of the following file/directories
          git_ignored = false,
          custom = function(path)
            local root = require("nvim-tree.core").get_cwd()
            local name = vim.fs.basename(path)

            return name == ".DS_Store" or name == "node_modules" or (root and path == root .. "/.git")
          end,
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
      }

      nvimtree.setup(opts)
    end,
  },
}

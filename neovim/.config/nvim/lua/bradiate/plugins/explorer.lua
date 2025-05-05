return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
    -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
    default_file_explorer = false,
    view_options = {
      show_hidden = true
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
      ["g\\"] = false
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false
}
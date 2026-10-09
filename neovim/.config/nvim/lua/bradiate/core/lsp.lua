-- enable servers as specified by neovim/nvim-lspconfig
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("pyright")

vim.lsp.config("angularls", {
  cmd = function(dispatchers)
    local ngserver = vim.fn.exepath("ngserver")
    assert(ngserver ~= "", "Install @angular/language-server and add ngserver to PATH")
    -- Resolve Bun/npm's global symlink at launch, including custom global install directories.
    local server_path = vim.uv.fs_realpath(ngserver) or ngserver
    local node_modules = vim.fs.normalize(vim.fs.joinpath(vim.fs.dirname(server_path), "../../.."))
    return vim.lsp.rpc.start({
      ngserver,
      "--stdio",
      "--tsProbeLocations",
      node_modules,
      "--ngProbeLocations",
      vim.fs.joinpath(node_modules, "@angular/language-server/node_modules"),
    }, dispatchers)
  end,
  filetypes = { "typescript", "typescriptreact", "html", "htmlangular" },
})
vim.lsp.enable("angularls")

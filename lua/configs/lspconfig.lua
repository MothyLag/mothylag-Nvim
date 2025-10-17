local M = {}

function M.setup()
  local lspconfig = vim.lsp.config
  local mason = require("mason")
  local mason_lspconfig = require("mason-lspconfig")
  mason.setup()

  mason_lspconfig.setup({
    ensure_installed = {
      "lua_ls",
      "ts_ls",
      "pyright",
      "jsonls",
      "bashls",
    },
  })

  local servers = {
    lua_ls = {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          telemetry = { enable = false },
        },
      },
    },
    tsserver = {},
    pyright = {},
    jsonls = {},
    bashls = {},
  }

  -- for name, config in pairs(servers) do
  --   lspconfig[name].setup(config)
  -- end

end

return M

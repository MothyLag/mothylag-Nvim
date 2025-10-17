return {
  "sigmasd/deno-nvim",
  config = function()
    local on_attach = require("customs.lsp.on_attach")
    local deno_adapter = require("customs.dap.deno_adapter")
    require("deno-nvim").setup({
      server = {
        on_attach = on_attach,
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      },
      dap = {
        adapter = deno_adapter,
      },
    })
  end,
}

-- ~/.config/nvim/lua/custom/plugins.lua
local plugins = {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
        highlight = "IblIndent",
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
        highlight = "IblScope",
      },
    },
    config = function()
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3B4252" })
      vim.api.nvim_set_hl(0, "IblScope", { fg = "#7fbbb3" }) -- ajusta el color si lo deseas
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "go", "gomod", "gosum" },
    },
  },
}
return plugins

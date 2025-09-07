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
      ensure_installed = { "go", "gomod", "gosum","markdown" },
    },
  },
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
      config = function()
      require("configs.telescope")
      end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- requerido por Neogit
    },
    config = true,
    lazy = false, -- para cargarlo al inicio
  },
  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.3",
    config = function()
      require("distant"):setup()
    end,
    lazy = false,
  },

}
return plugins

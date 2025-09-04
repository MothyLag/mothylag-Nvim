local telescope = require("telescope")

telescope.setup {
  extensions = {
    project = {
      display_type = "minimal",
      hide_workspace = true,
    },
  },
}

-- Carga la extensión después de configurar
telescope.load_extension("project")

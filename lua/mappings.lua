require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Neogit Open" })
map("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-b>", function()
  require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle NvimTree", noremap = true, silent = true })

vim.keymap.set("n", "<C-p>", function()
  require("telescope").extensions.project.project{}
end, { desc = "Switch Project", noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

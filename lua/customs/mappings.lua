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
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- local default_mappings = require"nvchad.mappings"
--
-- local custom_general = {
--   n = {
--     ["<leader>gg"] = { ":Neogit<CR>", "Open Neogit" },
--     ["<C-b>"] = { ":lua require('nvim-tree.api').tree.toggle()<CR>", "Toggle NvimTree" },
--     ["<C-p>"] = { ":lua require('telescope').extensions.project.project{}<CR>", "Switch Project" },
--   },
--   i = {
--     ["jk"] = { "<ESC>", "Escape insert mode" },
--   },
-- }
-- local function merge_mappings(base,custom)
--   for mode,maps in pairs(custom) do
--     base[mode] = base[mode] or {}
--     for key,val in pairs(maps) do
--       base[mode][key] = val
--     end
--   end
-- end
--
-- merge_mappings(default_mappings.general,custom_general)
--
-- return {
--    general = default_mappings.general
--  }

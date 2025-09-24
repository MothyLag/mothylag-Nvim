require "nvchad.autocmds"

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local file_dir = vim.fn.expand("%:p:h")
    if vim.fn.isdirectory(file_dir) == 1 then
      vim.cmd("silent! lcd " .. file_dir)
    end
  end,
})


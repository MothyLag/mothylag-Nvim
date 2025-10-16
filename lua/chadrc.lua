-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 
require("customs.mappings")
require("customs.lsps")
---@class ChadrcConfig
local M = {}

M.base46 = {
	theme = "bearded-arc",
  transparency = true,
	  hl_override = {
	  Comment = { italic = true },
	  ["@comment"] = { italic = true },
	},
}

-- M.plugins =  "customs.plugins.init"
M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    lazyload = false,
    transparency = true
  }
}
vim.opt.guifont = "FiraCode Font:h14"
return M

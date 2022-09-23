-- /lua/custom/plugins/configs.lua file

local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "vim",
    "c",
    "python",
  },
  indent = {
    enable = false, -- default is disabled anyways
  },
}

M.nvimtree = {
  ignore_ft_on_setup = {},
  git = {
    enable = true,
    ignore = false,
  },
}

return M

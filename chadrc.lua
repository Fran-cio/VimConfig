local M = {}

M.mappings = require "custom.maps"

local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  install = userPlugins,

  user = require "custom.mis_plugins",

  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

M.ui = {
  theme = "jellybeans",
}

return M

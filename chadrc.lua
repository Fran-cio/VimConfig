local M = {}

local userPlugins = require "custom.mis_plugins" -- path to table
local pluginConfs = require "custom.plugins.configs"


M.plugins = {
  install = userPlugins,

  default_plugin_config_replace = {
    nvim_treesitter = pluginConfs.treesitter,
    nvim_tree = pluginConfs.nvimtree,
  },

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

M.ui = {
  theme = "onedark-deep",
}

return M

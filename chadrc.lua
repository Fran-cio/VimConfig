local M = {}

M.mappings = require("custom.maps")

local userPlugins = require "custom.mis_plugins" -- path to table
local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  install = userPlugins,

  require "custom.mis_plugins",

  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  -- ["williamboman/nvim-lsp-installer"] = {
    --   config = function()
      --     require "custom.plugins.lspconfig"
      --   end,
      -- }
    }

    M.ui = {
      theme = "solarized",
    }

    return M

-- /lua/custom/plugins/init.lua
return {
  ---Mios
  --
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    lazy = false,
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^3', -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
      require "custom.plugins.haskell"
    end,

  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    lazy = false,
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = { -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "html-lsp",
        "json-lsp",

        --mia
        "python-lsp-server",
        "clangd",
        -- shell
        "shfmt",
        "shellcheck",
      },
    },
  }
}

-- /lua/custom/plugins/init.lua
return {
  ---Mios
  --
  ["phaazon/hop.nvim"] = {
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["junegunn/fzf"] = {},
  ["junegunn/fzf.vim"] = {},
  -- ["williamboman/nvim-lsp-installer"] = {
  --   config = function()
  --     require "plugins.configs.nvterm"
  --   end,
  -- },
  -- we are just modifying lspconfig's packer definition table
  -- put this in your custom plugins section
  --
  -- remove plugin
  -- ["neovim/nvim-lspconfig"] = false,
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev
      "html-lsp",
      "json-lsp",

      --mia
      "python-lsp-server",
      "cclang",
      -- shell
      "shfmt",
      "shellcheck",
    },
  },
}

-- /lua/custom/plugins/init.lua
return {
  ---Mios
  ["junegunn/fzf"] = { ft = "fzf" },
  -- ["williamboman/nvim-lsp-installer"] = {
  --   config = function()
  --     require "plugins.configs.nvterm"
  --   end,
  -- },
-- we are just modifying lspconfig's packer definition table
-- put this in your custom plugins section

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
      "jedi-language-server",
      "cclang",
      -- shell
      "shfmt",
      "shellcheck",
    },
  },
}
-- just an example!

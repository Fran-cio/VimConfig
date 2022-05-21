-- /lua/custom/plugins/init.lua
return {
  ---Mios
  ["junegunn/fzf.vim"] = { ft = "fzf" },

  ["williamboman/nvim-lsp-installer"] = {
    config = function()
      require "plugins.configs.nvterm"
    end,
  },
}
-- just an example!

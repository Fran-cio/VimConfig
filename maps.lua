local M={}
-- modificaciones de las configs defaults

-- MAPPINGS

M.lspconfig = {
  n = {
    ["<leader>ll"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "   diagnostic setloclist",
    }
  }
}

  M.abc ={
    n = {
      -- Local Mapping
      ["<leader>cc"]  =       {":Telescope <CR>", "No se"},
      ["<leader>q"]   =       {":q <CR>", "Bye bro"},
      ["<leader>qq"]  =       {":q! <CR>", "posta chau"},
      ["<leader>w"]  =       {":w <CR>", "Guardar"},
      ["<leader>;"]  =       {"$a;<Esc>", "Poner ;"},
      ["<leader>>"]  =       {"10<C-w>>", "Mover ventana der"},
      ["<leader><"]  =       {"10<C-w>><", "Mover ventana izq"},
      ["<Leader>ag"]  =       {":Ag<CR>", "Buscardor de palabra"},
      ["<a-j>"]  =       {"10<C-e>", "Bajar pagina"},
      ["<a-k>"]  =       {"10<C-y>", "Suber pagina"},
    }
  }

  return M
  -- NOTE: the 3t  argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it

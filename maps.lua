local M = {}
-- modificaciones de las configs defaults

-- MAPPINGS

M.lspconfig = {
	n = {
		["<leader>ll"] = {
			function()
				vim.diagnostic.setloclist()
			end,
			"   diagnostic setloclist",
		},
	},
}

M.search_replace = {
  v = {
    ["<C-r>"] = {"<CMD>SearchReplaceSingleBufferVisualSelection<CR>", "Search Replace Single Buffer Visual Selection"},
    ["<C-s>"] = {"<CMD>SearchReplaceWithinVisualSelection<CR>", "Search Replace Within Visual Selection"},
    ["<C-b>"] = {"<CMD>SearchReplaceWithinVisualSelectionCWord<CR>", "Search Replace Within Visual Selection CWord"},
  },

  n = {
    ["<leader>rs"] = {"<CMD>SearchReplaceSingleBufferSelections<CR>", "Search Replace Single Buffer Selections"},
    ["<leader>ro"] = {"<CMD>SearchReplaceSingleBufferOpen<CR>", "Search Replace Single Buffer Open"},
    ["<leader>rw"] = {"<CMD>SearchReplaceSingleBufferCWord<CR>", "Search Replace Single Buffer CWord"},
    ["<leader>rW"] = {"<CMD>SearchReplaceSingleBufferCWORD<CR>", "Search Replace Single Buffer CWORD"},
    ["<leader>re"] = {"<CMD>SearchReplaceSingleBufferCExpr<CR>", "Search Replace Single Buffer CExpr"},
    ["<leader>rf"] = {"<CMD>SearchReplaceSingleBufferCFile<CR>", "Search Replace Single Buffer CFile"},

    ["<leader>rbs"] = {"<CMD>SearchReplaceMultiBufferSelections<CR>", "Search Replace Multi Buffer Selections"},
    ["<leader>rbo"] = {"<CMD>SearchReplaceMultiBufferOpen<CR>", "Search Replace Multi Buffer Open"},
    ["<leader>rbw"] = {"<CMD>SearchReplaceMultiBufferCWord<CR>", "Search Replace Multi Buffer CWord"},
    ["<leader>rbW"] = {"<CMD>SearchReplaceMultiBufferCWORD<CR>", "Search Replace Multi Buffer CWORD"},
    ["<leader>rbe"] = {"<CMD>SearchReplaceMultiBufferCExpr<CR>", "Search Replace Multi Buffer CExpr"},
    ["<leader>rbf"] = {"<CMD>SearchReplaceMultiBufferCFile<CR>", "Search Replace Multi Buffer CFile"}
  },
}

-- show the effects of a search / replace in a live preview window

M.haskell = {
	n = {
		["<leader>cl"] = {
			function()
				vim.lsp.codelens.run()
			end,
			"Auto Refresh",
		},
		["<leader>hs"] = {
			function()
				require("haskell-tools").hoogle.hoogle_signature()
			end,
			"Hoogle search for the type signature",
		},
		["<leader>ea"] = {
			function()
				require("haskell-tools").lsp.buf_eval_all()
			end,
			"Evaluate all code snippets",
		},
		["<leader>rr"] = {
			function()
				require("haskell-tools").repl.toggle()
			end,
			" Toggle a GHCi repl for the current package",
		},
		["<leader>rf"] = {
			function()
				require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0))
			end,
			"Toggle a GHCi repl for the current buffer",
		},
		["<leader>rq"] = {
			function()
				require("haskell-tools").repl.quit()
			end,
			"Quit ",
		},
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
	},
}

M.abc = {
	n = {
		-- Local Mapping
		["<leader>ff"] = { ":FZF<CR>", "Find Files" },
		["<leader>q"] = { ":q <CR>", "Bye bro" },
		["<leader>qq"] = { ":q! <CR>", "posta chau" },
		["<leader>w"] = { ":w <CR>", "Guardar" },
		["<leader>;"] = { "$a;<Esc>", "Poner ;" },
		["<leader> >"] = { "10<C-w>>", "Mover ventana der" },
		["<leader> <"] = { "10<C-w><", "Mover ventana izq" },
		["<Leader>ag"] = { ":Ag<CR>", "Buscardor de palabra" },
		["<a-j>"] = { "10<C-e>", "Bajar pagina" },
		["<a-k>"] = { "10<C-y>", "Suber pagina" },
		--- Easy Motion
		["<Leader>s"] = { ":HopChar2<CR>", "Encontrar por 2 caracteres" },
	},
}

return M
-- NOTE: the 3t  argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it

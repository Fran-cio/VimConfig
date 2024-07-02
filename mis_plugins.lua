-- /lua/custom/plugins/init.lua
return {
	---Mios
	--
	--
	--
  {
  "roobert/search-replace.nvim",
  lazy = false,
  config = function()
    require("search-replace").setup({
      -- optionally override defaults
      default_replace_single_buffer_options = "gcI",
      default_replace_multi_buffer_options = "egcI",
    })
  end,
  },
	{
		"giusgad/pets.nvim",
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
		config = function()
			require("pets").setup({
				row = 1, -- the row (height) to display the pet at (higher row means the pet is lower on the screen), must be 1<=row<=10
				col = 0, -- the column to display the pet at (set to high number to have it stay still on the right side)
				speed_multiplier = 1, -- you can make your pet move faster/slower. If slower the animation will have lower fps.
				default_pet = "dog", -- the pet to use for the PetNew command
				default_style = "brown", -- the style of the pet to use for the PetNew command
				random = true, -- whether to use a random pet for the PetNew command, overrides default_pet and default_style
				death_animation = true, -- animate the pet's death, set to false to feel less guilt -- currently no animations are available
				popup = { -- popup options, try changing these if you see a rectangle around the pets
					width = "30%", -- can be a string with percentage like "45%" or a number of columns like 45
					winblend = 100, -- winblend value - see :h 'winblend' - only used if avoid_statusline is false
					hl = { Normal = "Normal" }, -- hl is only set if avoid_statusline is true, you can put any hl group instead of "Normal"
					avoid_statusline = false, -- if winblend is 100 then the popup is invisible and covers the statusline, if that
					-- doesn't work for you then set this to true and the popup will use hl and will be spawned above the statusline (hopefully)
				},
			})
		end,
	},
	{
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		lazy = false,
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	},
	{
		"mrcjkb/haskell-tools.nvim",
		version = "^3", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		lazy = false,
		config = function()
			require("custom.plugins.null-ls")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
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

				-- typescript
				"eslint",
				"tsserver",

				--mia
				"python-lsp-server",
				"clangd",
				-- shell
				"shfmt",
				"shellcheck",
			},
		},
	},
}

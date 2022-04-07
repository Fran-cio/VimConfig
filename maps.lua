local opt = vim.opt

local utils = require "core.utils"

local config = utils.load_config()

local maps = config.mappings
local plugin_maps = maps.plugins

-- por defecto esta asigando a q pero q es sagrado para :q asi que lo piso
local map_lspconfig = plugin_maps.lspconfig
-- modificaciones de las configs defaults
map_lspconfig.set_loclist = "<leader>ll"

opt.relativenumber = true


-- MAPPINGS
local map = require("core.utils").map

-- Local Mapping
map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")
map("n", "<leader>qq", ":q! <CR>")
map("n", "<leader>w", ":w <CR>")

map("n", "<leader>;", "$a;<Esc>")


-- split resize
map("n","<leader>>", "10<C-w>>")
map("n","<leader><","10<C-w><")

-- faster scrolling
map("n","<a-j>","10<C-e>")
map("n","<a-k>","10<C-y>")
-- NOTE: the 3t  argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it

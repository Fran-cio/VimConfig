-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/francisco/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/francisco/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/francisco/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/francisco/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/francisco/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÚ\4\0\0\t\0\25\1(6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\1\0B\3\2\0029\3\2\0035\5\3\0004\6\0\0=\6\4\0055\6\5\0=\6\6\0055\6\a\0005\a\b\0=\a\t\6=\6\n\0055\6\v\0004\a\0\0=\a\f\6=\6\r\0055\6\14\0004\a\0\0=\a\15\6=\6\16\0055\6\17\0004\a\0\0=\a\18\6=\6\19\0055\6\20\0005\a\21\0004\b\0\0=\b\22\a=\a\23\6=\6\24\5B\3\2\0?\3\0\0B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\16auto_resize\1\tside\tleft\21hide_root_folder\1\vheight\3\30\nwidth\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\1\0\1\venable\1\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\a\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\1\18hijack_cursor\1\16open_on_tab\2\15auto_close\2\nsetup\14nvim-tree\frequire\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/francisco/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/francisco/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/francisco/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÚ\4\0\0\t\0\25\1(6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\1\0B\3\2\0029\3\2\0035\5\3\0004\6\0\0=\6\4\0055\6\5\0=\6\6\0055\6\a\0005\a\b\0=\a\t\6=\6\n\0055\6\v\0004\a\0\0=\a\f\6=\6\r\0055\6\14\0004\a\0\0=\a\15\6=\6\16\0055\6\17\0004\a\0\0=\a\18\6=\6\19\0055\6\20\0005\a\21\0004\b\0\0=\b\22\a=\a\23\6=\6\24\5B\3\2\0?\3\0\0B\0\2\1K\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\5\16auto_resize\1\tside\tleft\21hide_root_folder\1\vheight\3\30\nwidth\3\30\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\1\0\1\venable\1\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\0\a\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\15update_cwd\1\18hijack_cursor\1\16open_on_tab\2\15auto_close\2\nsetup\14nvim-tree\frequire\3ÄÄ¿ô\4\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

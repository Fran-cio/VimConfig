local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.formatting.beautysh,

  -- C
  b.formatting.clang_format,
  b.diagnostics.cpplint,

  -- Python
  b.diagnostics.flake8,
  b.formatting.autopep8,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

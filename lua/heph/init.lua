--- init.lua
local M = {}

function M.setup()
  -- TS Config
  vim.cmd("TSInstall starlark")
  vim.treesitter.language.register('starlark', { 'heph' })

  -- LSP Config
  local default_config = {
    -- cmd = { 'heph', 'lsp', 'serve', '4374' },
    cmd = { 'starlark-lsp', 'start', '--address=":4374"' },
    filetypes = { 'heph', 'starlark' },
  }

	vim.lsp.config("heph", default_config)
end

return M

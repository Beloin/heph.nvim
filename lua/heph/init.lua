--- init.lua
local M = {}

local file_icon = require("heph.file_icon")

function M.setup()
	-- TS Config
	-- require('nvim-treesitter.install').ensure_installed('starlark')
	vim.cmd("TSInstall starlark")
	vim.treesitter.language.register("starlark", { "heph" })

	-- File configs
	file_icon.setup()

	-- LSP Config
	local default_config = {
		cmd = { 'heph', 'lsp', 'serve' },
		filetypes = { "heph", "starlark" },
	}

	vim.lsp.config("heph", default_config)
	vim.lsp.enable({ "heph" })
end

return M

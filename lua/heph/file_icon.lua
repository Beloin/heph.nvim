--- file_icon.lua
local M = {}

local utils = require("heph.utils")

function M.setup()
	if utils.isModuleAvailable("nvim-web-devicons") then
		require("nvim-web-devicons").set_icon_by_filetype({
			heph = "bzl"
		})
	end
end

return M

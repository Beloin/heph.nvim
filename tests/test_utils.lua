local Helpers = dofile("tests/helpers.lua")

-- See https://github.com/echasnovski/mini.nvim/blob/main/lua/mini/test.lua for more documentation

local child = Helpers.new_child_neovim()

local T = MiniTest.new_set({
	hooks = {
		-- This will be executed before every (even nested) case
		pre_case = function()
			-- Restart child process with custom 'init.lua' script
			child.restart({ "-u", "scripts/minimal_init.lua" })
		end,
		-- This will be executed one after all tests from this set are finished
		post_once = child.stop,
	},
})

-- Tests related to the `setup` method.
T["utils()"] = MiniTest.new_set()

T["utils()"]["test isModuleAvailable"] = function()
	local resultFalse = child.lua_get([[require('heph.utils').isModuleAvailable("john_smith")]])
  Helpers.expect.equality(resultFalse, false)

	local resultTrue = child.lua_get([[require('heph.utils').isModuleAvailable("math")]])
  Helpers.expect.equality(resultTrue, true)
end

return T

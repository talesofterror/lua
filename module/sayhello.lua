local M = {}

function M.greet()
	print("saying hello from the sayhello module")
end

function M:CustomGreet (s)
	print(s)
end

return M

--[[
-- M shows up in a special color, but chaning M to Greetings or any other
-- word also works, but are not shown in the same color.
--]]

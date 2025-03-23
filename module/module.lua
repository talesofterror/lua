local greet = require("module.sayhello")
-- Have to specify module.sayhello instead of just
-- sayhello. 
-- 
-- this is because i was running this from one directory
-- up from the one this file is located in. 

greet:greet()
--[[
-- 1, returns the value of the function M.greet() 
-- defined in sayhello.lua
--]]

print("\n", package.path, "\n")
--[[
--2, returns, first, .\?.lua which points to this current directory
--then returns a bunch of directories in my programfilesx84\lua\5.1
--directory with the ? wildcard character on windows
--]]

local nothingReturned = require("module.noreturn")

-- print(nothingReturned.no) -- error, attempt to index local ''nothingReturned' (a boolean value)
print(nothingReturned) --3, returns true (?) maybe because the file exists?

-- local requireObject = require("{name = 'bob'}")
-- print(requireObject.name)
--[[
--calling require() with a string that attemps to
--define a table doesn't work. require() looks for files
--]]

-- local requireObject2 = require({name = "bob"}) -- warning, cannot assign table to parameter string
-- error when running, string expected
-- print(requireObject2.name) -- can't
print(ret) --4, prints "return". ret was defined as global var in noreturn.lua

local farewell = require("module.farewell.saygoodbye")

farewell.farewell() --5, prints the farewell function defined in the farewell/saygoodbye.lua file

print(ref) --6, nil
-- ref is a global defined in noref.lua, which had not been
-- required

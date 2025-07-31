print(ret) --1, returns nil
-- ret is defined in module/noreturn.lua
-- but this script can't see it

print(_G.ret) --2, nil
print(_G["ret"]) --3, nil

local t1 = {1, 2, 3}
print(#t1) --4, returns 3 because
-- # before the var returns the length
print(unpack(t1)) --5, returns 1, 2, 3

local selectTest = select(1, 3, 2, 1) -- returns the number of arguments passed
local selectTest2 = select(2, 3, 2, 1)
 -- the first arguments specifies the index to start at. 
print(selectTest, selectTest2) --6, returns 3	 2

firstTable = {name = "bob", age = "40"}

otherTable = {}

print(firstTable.name) --1, prints bob

setmetatable(otherTable, firstTable)

print(otherTable.name) --2, prints nil

if getmetatable(otherTable) == firstTable then
	print("firstTable is a metatable of otherTable") --3
else print("This should return true")
end

thirdTable = {}

fourthTable = {
	__index = {name = "sally", age="23"},
	jello = "jello"
}

setmetatable(thirdTable, fourthTable)

print(getmetatable(thirdTable).jello) --4, prints jello
print(fourthTable.name) --5, prints nil
print(fourthTable.jello) --6, prints jello
print(thirdTable.name) --7
print(thirdTable.jello) --8, prints nil

--[[
-- because the name property only exists in the __index of fourthTable trying to access 
-- fourthTable.name doesn't work, returns nil
--
-- making fourthTable a metatable for thirdTable links the two table, but does not in itself
-- create an inheritance of it's fourthTable's properties.
--
-- only when we defined the __index of fourthTable can the properties in fourthTable.__index 
-- be inherited. other properties in fourthTable are not inherited by thirdTable. 
--]]

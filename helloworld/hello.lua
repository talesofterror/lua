print("hi")

-- local test = {
-- 	value = "hello"
-- }
--
-- print(test)
-- print(test.value)
--
-- test.value2 = 5
--
-- print(test.value2)
--
-- print(test.__index)
--
-- print(io)
-- print(io.write)
--
-- io.write("hello from io.write() \n")
-- io.write("enter a number greater than, but not equal to, 5 \n")
--
-- local Response = io.read()
--
-- if tonumber(Response) > 5 then
-- 	io.write("thank you.")
-- else
-- 	io.write("incorrect.")
-- end

HeroConstructor = {}

function HeroConstructor:new (name, class, hp)

	local privateTable = {name = name, class = class, hp = hp}

	setmetatable(privateTable, self)
	self.__index = self

	self.attack = function (target, damage)
		target.hp = target.hp - damage
	end

	return privateTable
end

function HeroConstructor:add (a, b) --static method?
	-- print(a + b)
	return tostring(a + b)
end


local etrigan = HeroConstructor:new("Etrigan", "Warrior", 100)
local balor = HeroConstructor:new("Balor", "Warrior", 100)
balor.attack(etrigan, 50)
io.write("Name: ", etrigan.name, "; Health: ", etrigan.hp, "; Class: ", etrigan.class, "\n")
-- assert(getmetatable(M) ~= Object) --fails
-- assert(getmetatable(constructor1_1) == Constructor1) --fails
io.write(HeroConstructor:add(2, 4))
print(HeroConstructor.undefinedVariable)




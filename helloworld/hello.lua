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

Object = {}

function Object:new ()
	local m = {}
	m.staticField1 = "static field"
	m.staticField2 = "static field"
	m.announce = function ()
		print("hello from the object prototype")
	end
	m.add = function (a, b)
		print(a + b)
	end
	setmetatable(m, self)
	self.__index = m
	return m
end

function Object:add (a, b)
	print(a + b)
	return tostring(a + b)
end


M = Object:new()
--assert(getmetatable(M) ~= Object) --fails
assert(getmetatable(M) == Object) --succeeds
Object:add(2, 4)
print(M.add(2, 5))




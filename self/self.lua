T1 = {}

function T1.new (self, name, age)
	local t = {name = name, age = age}
	setmetatable(t, {__index = self})
	PrintClassSelf = function (_self)
		print(_self)
	end
	t.printReturnedSelf = function (_self)
		print(_self)
	end
	return t
end

t1 = T1.new(t1, "bob", "70")

print(t1.name) --1, prints bob

function T1.add(self, number)
	print(self.age + number)
end

-- t1.add(t1, 10) -- error, nil value
T1.add(t1, 10) --2, prints 80

-- print(t1.__index.name) -- error, __index is nil value

t1.__index = t1

print(t1.name) --3, bob
print(t1.__index.name) --4, bob

T1.PrintClassSelf(t1) --5


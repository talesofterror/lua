T1 = {}

function T1.new (self, name, age)
	local t = {name = name, age = age}
	setmetatable(t, {__index = self})
	PrintClassSelf = function (s)
		print(s)
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

-- T1.PrintClassSelf(T1) --5, error, attempt to call nil value
t1.printReturnedSelf(t1) --6, prints table: <memory location>
print(t1) -- 7, prints same memory location as directly above
t1.printReturnedSelf(T1) --8, print memory location of T1
print(T1) --9, prints memory location of T1

local t2 = T1.new(t2, "john", 40)

print(t2.name) --10, john

local t3 = T1.new(t2, "sam", 60)

print(t3.name) --11, sam


print(ret) --1, returns nil
-- ret is defined in module/noreturn.lua
-- but this script can't see it

print(_G.ret) --2, nil
print(_G["ret"]) --3, nil

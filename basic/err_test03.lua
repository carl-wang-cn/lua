function foo(str)
    if type(str) ~= "string" then
        error("string expected", 0)
    end
    print("foo success")
end

local status, err = pcall(foo(3))
print(err)


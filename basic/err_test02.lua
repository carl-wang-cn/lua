local status, err = pcall(function () error("my error") end)
print(err)

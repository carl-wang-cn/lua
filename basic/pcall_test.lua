local status, err = pcall(function () error({code=121}) end)
print(status, err.code, type(err))


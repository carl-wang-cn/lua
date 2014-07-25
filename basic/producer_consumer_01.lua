function receive(prod)
    local status, value = coroutine.resume(prod)
    return value
end

function send(x)
    coroutine.yield(x)
end

function producer()
    return coroutine.create(function ()
        while true do
            local x = io.read()
            send(x)
        end
    end)
end

function consumer(prod)
    while true do
        local x = receive(prod)
        if x then
            io.write(x, '\n')
        else
            break
        end
    end
end

p = producer()
consumer(p)


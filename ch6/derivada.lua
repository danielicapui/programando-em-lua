function Derivada(f, delta)
    delta = delta or 1e-4
    return function(x)
        return (f(x + delta) - f(x)) / delta
    end
end
local f=Derivada(math.sin)
io.write(f(5.2),math.cos(5.2),"\n")


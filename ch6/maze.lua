--[[6.4 implementar o maze usando os chamadas finais]]--
room1=function ()
    io.write("Você chegou ao room1!\n")
    io.write("Que direção seguir:\n")
    local move=io.read()
    if move =="south" then room3()
    elseif move=="east" then room2()
    else
        io.write("Direção invalida\n")
        return room1()
    end
end
room2=function ()
    io.write("Você chegou ao room2!\n")
    io.write("Que direção seguir:\n")
    local move=io.read()
    if move =="south" then room4()
    elseif move=="west" then room1()
    else
        io.write("Direção invalida\n")
        return room2()
    end
end
room3=function ()
    io.write("Você chegou ao room3!\n")
    io.write("Que direção seguir:\n")
    local move=io.read()
    if move =="north" then room1()
    elseif move=="east" then room4()
    else
        io.write("Direção invalida\n")
        return room3()
    end
end
room4=function ()
    io.write("Você chegou ao room4!\n")
    io.write("Parabéns, você ganhou!\n")
end
room1()
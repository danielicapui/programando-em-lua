--[[6.1 Escreva uma função integral que receba uma função f e retorne uma função que calcula a integral definida de f. A
função retornada, quando chamada com dois valores x e y, deve retornar uma aproximação da integral de f de x a y.--]]
function Integral(f,d)
    d=d or 1e-4
    return function(x,y)
        local r=0
        for i=x,y,d do
            r=r+i*d
        end
        return r
    end
end

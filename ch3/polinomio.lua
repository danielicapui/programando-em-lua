--[[3.3 pediu a você para escrever uma função que recebesse um polinômio (representado por uma tabela) e um
valor para a sua variável e que retornasse o valor desse polinômio]]--
--polinomio ax^2+bx+c=0
function Polinomio(p,x)
    local n,i=#p,1
    local soma=0
    while (i~=n) do
        soma=soma+(p[i]*x^(i-1))
        i=i+1
    end
    return soma
end
io.write(Polinomio({2,4,4},3))
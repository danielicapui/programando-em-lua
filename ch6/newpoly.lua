--[[ pediu a você para escrever uma função que recebesse um polinômio (representado por uma tabela) e um
valor para a sua variável e que retornasse o valor desse polinômio. Escreva a versão curried dessa função. Ela deverá
receber um polinômio e retornar uma função que, quando chamada com um valor para x, retorne o valor do polinômio
para esse x. Veja o exemplo:]]--
function newpoly(polinomio)
    return function(x)
        local soma,i=0,0
        while (i~=#polinomio) do
            soma=soma+(polinomio[#polinomio-i]*x^(i))
            i=i+1
        end
        return soma
    end
end
local polinomio=newpoly({3,0,1})
local x=tonumber(io.read(),10)
io.write(string.format("Resultado %s: %.2f\n",x,polinomio(x)))
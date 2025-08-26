# Algoritmo de busca linear

# arrays para cada caso
array = [10, 25, 43, 33, 190, 5]
array_primeiro = [43, 25, 343, 33, 190, 5]
array_ultimo = [10, 25, 23, 33, 190, 43]
array_sem = [10, 25, 56, 33, 190, 5]
alvo = 43

def pesquisa_linear (array, alvo)
    indice = 0
    array.each do |item|
        if item == alvo
            # O return tem como função para o loop assim que achar a condição
            return indice
        end
        indice += 1
    end
    return -1
end

# teste
resposta = pesquisa_linear(array, alvo)
resposta1 = pesquisa_linear(array_primeiro, alvo)
resposta2 = pesquisa_linear(array_ultimo, alvo)
resposta3 = pesquisa_linear(array_sem, alvo)

# imprimindo resultado
puts("#{resposta}; #{resposta1}; #{resposta2}; #{resposta3}")
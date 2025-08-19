# Gerador de perfil simples

# entrada de dados
puts "Bem vindo(a)! Qual é o seu nome"
nome = gets.chomp # armazena o nome pedido em uma variavel
puts "Qual o ano do seu nascimento"
ano = gets.chomp.to_i # armazena o ano (obs. em ruby, tudo que vem do teclado e texto, o to_i transforma em número inteiro)

# método para calcular 
def calcular_idade (ano)
    return idade = 2025 - ano    
end

# chamando e guardando o resultado do calculo
idade_calculada = calcular_idade(ano)

# método para mostar perfil
def mostrar_perfil (nome, idade)
    puts "Olá #{nome}, você tem #{idade} anos."
    return
end

# imprimindo na tela
mostrar_perfil(nome, idade_calculada)
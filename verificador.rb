# Verificador de Idade para Votação

# entrada de dados
puts "Bem vindo(a)! Qual é o seu nome?"
nome = gets.chomp # armazena o nome pedido em uma variavel
puts "Quanto anos você tem?"
idade = gets.chomp.to_i # armazena o ano (obs. em ruby, tudo que vem do teclado e texto, o to_i transforma em número inteiro)

# método para verificar a idade para poder votar
def verifica_idade (nome, idade)
    if idade >= 70
        puts "#{nome}, voto e opcional!"
    elsif idade >= 18
        puts "#{nome}, você é maior de 18 anos voto obrigatorio"
    elsif idade >= 16
        puts "#{nome}, você ainda não completou 18 anos voto opcional"
    else
        puts "#{nome}, você ainda não atingiu a idade correta."
    end
end

# sáida de dados
verifica_idade(nome, idade)
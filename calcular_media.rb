# Algoritmo: Analisador de Notas de Alunos

# entrada de dados
notas = []
puts "Dígite seu nome"
nome = gets.chomp

# criando um loop para receber as notas e enviar ao array de "notas"
contador = 1 # variavel de controle do loop

loop do
    puts "Dígite a nota #{contador}:"
    nota = gets.chomp.to_f
    notas.push(nota) # .push() adiciona a nota ao array de notas
    if contador == 4
        break
    end
    contador += 1
end

#criando método para calcular a media
def calcular_media (notas)
    total = 0.0
    notas.each do |num| # o método each, percorre cada número do array
    total += num
    end
    media = total / 4
    return media
end

# calculando a média e armazenando em uma variável
media_calculada = calcular_media(notas)

# método para mostrar resultado final
def resultado_final (nome, media_calculada)
    # verificação do resultado da média
    if media_calculada >= 7.0
        puts "Aluno #{nome} foi aprovado com média #{media_calculada}!"
    elsif media_calculada >= 5.0 
        puts "Aluno #{nome} foi para recuperação com média #{media_calculada}!"
    else
        puts "Aluno #{nome} foi reprovado com média #{media_calculada}!"
    end
end


resultado_final(nome, media_calculada)
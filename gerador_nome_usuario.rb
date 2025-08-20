# Algoritmo: Gerador de Nome de Usuário

# entrada de dados
puts "Dígite seu nome completo:"
nome_completo = gets.chomp

def gerar_usuario (nome_completo)
  # O ".split()" metodo usado para dividir uma string em varias partes, usando um separador especifico. 
  # No nosso caso (" ") o espaço será o separador
  # a variável nome_dividido se transformara em um array
  nome_dividido = nome_completo.split(" ")
  # O ".map {|parâmetro| o que fazer}" passa palavra por palavra no array nome_dividido
  # A função "capitalize" transforma a primeira letra da palavra em maiúscula e o restante em minúscula
  # Não usei o .upcase pois essa função transforma a palavra inteira em maiúscula. Não se encaixando assim ao que foi pedido
  letra_maiuscula = nome_dividido.map { |nome| nome.capitalize }
  # O método .join é usado para concatenar os elementos de um array em uma única string, usando um delimitador opcional.
  # No nosso casa não colocamos nada pois queremos o nome junto 
  letra_maiuscula.join
end

puts gerar_usuario(nome_completo)
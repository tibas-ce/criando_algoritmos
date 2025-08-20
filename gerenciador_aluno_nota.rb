# Algoritmo: Gerenciador de Alunos e Notas

# criando class Aluno
class Aluno 
    attr_accessor :nome, :notas

    # método de inicialização
    def initialize (nome)
        @nome = nome
        @notas = []
    end

    def adicionar_nota (nota)
        @notas.push(nota) # .push() adiciona a nota ao array de notas
    end

    #criando método para calcular a media
    def calcular_media 
        total = 0
        @notas.each do |num| # o método each, percorre cada número do array
        total += num
        end
        media = total / @notas.size
        return media
    end

    # método para mostrar resultado final
    def resultado_final 
        media = calcular_media
        # verificação do resultado da média
        if media >= 7.0
            puts "Aluno(a) #{@nome} foi aprovado com média #{media}!"
        elsif media >= 5.0 
            puts "Aluno(a) #{@nome} foi para recuperação com média #{media}!"
        else
            puts "Aluno(a) #{@nome} foi reprovado com média #{media}!"
        end
    end
end

# Criação de alunos e notas diretamente no código
=begin
# array vazio para guadar o objeto alunos
alunos = []

#criando alunos
aluno1 = Aluno.new("TIBAS")
aluno2 = Aluno.new("José")
aluno3 = Aluno.new("Maria")

# adicionando notas
aluno1.adicionar_nota(8.5)
aluno1.adicionar_nota(8.5)
aluno1.adicionar_nota(8.5)
aluno1.adicionar_nota(8.5)

aluno2.adicionar_nota(2.5)
aluno2.adicionar_nota(2.5)
aluno2.adicionar_nota(2.5)
aluno2.adicionar_nota(2.5)

aluno3.adicionar_nota(5.0)
aluno3.adicionar_nota(5.0)
aluno3.adicionar_nota(5.0)
aluno3.adicionar_nota(5.0)

# adicinando alunos no array
alunos.push(aluno1)
alunos.push(aluno2)
alunos.push(aluno3)
=end

# Criando alunos e notas através do prompt

# array vazio para adicionar os alunos
alunos = []
# contador para controle do loop
contador = 1

# loop para recebimento dos dados
loop do
    puts "Dígite o nome do aluno:"
    nome = gets.chomp
    aluno = Aluno.new(nome)
    
    contador = 1 # reinicia o contador para um novo aluno
    loop do
        puts "Dígite a nota #{contador} bismestre"
        nota = gets.chomp.to_f
        # o "aluno." significa que esta chamando o método do objeto aluno (class Aluno)
        aluno.adicionar_nota(nota) 
        contador += 1
        break if contador > 4 
    end
    alunos.push(aluno) # adicionado aluno ao array de alunos
    puts "Você deseja cadastrar outro aluno? (S - sim; N - para não)"
    resposta = gets.chomp.upcase # .upcase recebe o dado em letra maiúscula
    if resposta != "S" 
        # retorna ao loop principal
        puts "Retornando ao cadastro de alunos."
        break
    end
end

# saida com relatorio final
puts "--- RESULTADO FINAL ---\n"
alunos.each do |aluno|
    aluno.resultado_final
end
# Algoritmo: Gerenciador de Contatos

# criando array agenda para armazernar os contatos
agenda = []

# criando método para adicionar contatos 
def adiciona_contato (lista, nome, telefone)
    contato = {nome: nome, telefone: telefone}
    lista.push(contato)
end

# criando método para buscar contato
def buscar_contatos (lista, nome_busca)
    contato = lista.find { |c| c[:nome] == nome_busca }
    if contato
        puts("#{contato[:nome]} - #{contato[:telefone]}")
    else
        puts("Nome não existe em contatos")
    end
end

# criando método de imprimir agenda
def mostrar_agenda (lista)
    lista.each do |contato|
        puts("#{contato[:nome]} - #{contato[:telefone]}")
    end
end

adiciona_contato(agenda, "tibas", 93220367)
adiciona_contato(agenda, "maria", 93939393)
adiciona_contato(agenda, "tomy", 31133223)

buscar_contatos(agenda, "tibas")
buscar_contatos(agenda, "joao")

mostrar_agenda(agenda)

# recebendo dados do usuário
loop do
    puts("Olá, bem vindo ao nosso gerenciador de contatos.\n O que você gostaria de fazer?\n Cadastrar um novo contato? Dígite c\n Buscar um contato? Dígite b\n para sair dígite s")
    resposta = gets.chomp.downcase
    if resposta == "c"
        puts("Dígite o nome do contato")
        nome = gets.chomp
        puts("Dígite o telefone de #{nome}")
        telefone = gets.chomp
        adiciona_contato(agenda, nome, telefone)
        
    elsif resposta == "b"
        puts("Dígite o nome do contato que você quer buscar")
        nome_buscar = gets.chomp
        buscar_contatos(agenda, nome_buscar)
        
    else
        puts("Saindo...")
        break
    end
    
end

puts(agenda)
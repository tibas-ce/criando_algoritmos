# Algoritmo: Gerenciador de Contatos

# criando array agenda para armazernar os contatos
agenda = []

# criando método para adicionar contatos 
def adiciona_contato (lista, nome, telefone)
    # Criando contato como símbolo pois, eles são imutáveis e reutilizados, eles são mais rápidos para comparação e acesso em hashes.
    contato = {nome: nome, telefone: telefone}
    lista.push(contato)
end

# criando método para buscar contato
def buscar_contatos (lista, nome_busca)
    # O método .find {|item| condição}, percorre o array/hash testa cada elemento é retorna o primeiro item que faz a condição ser verdadeira, nesse caso o que ele faz é procurar por um contato que bate com o nome de busca
    contato = lista.find { |c| c[:nome] == nome_busca }
    if contato
        puts("#{contato[:nome]} - #{contato[:telefone]}")
    else
        puts("Nome não existe em contatos")
    end
end

# criando método de imprimir agenda
def mostrar_agenda (lista)
    # O método each pecorre cada elemento da agenda e imprime cada um
    lista.each do |contato|
        puts("#{contato[:nome]} - #{contato[:telefone]}")
    end
end

# criando método excluir contatos
def excluir_contato (lista, contato_excluir)
    # O método .find percorre toda a agenda até achar o contato a ser excluido
    contato = lista.find { |c| c[:nome] == contato_excluir }
    if contato
        # O método .delete excluir o contato
        lista.delete(contato)
    else
        puts("Nome não existe em contatos")
    end
end

=begin
#testando código    
adiciona_contato(agenda, "tibas", 93220367)
adiciona_contato(agenda, "maria", 93939393)
adiciona_contato(agenda, "tomy", 31133223)

buscar_contatos(agenda, "tibas")
buscar_contatos(agenda, "joao")

mostrar_agenda(agenda)
excluir_contato(agenda, "tibas")
mostrar_agenda(agenda)

=end

# recebendo dados do usuário
loop do
    puts("Olá, bem vindo ao nosso gerenciador de contatos.\n O que você gostaria de fazer?\n Cadastrar um novo contato? Dígite c\n Buscar um contato? Dígite b\n Quer excluir um contato? Dígite e\n Para mostar agenda dígite m\n Para sair dígite s")
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
    elsif resposta == "e"
        puts("Dígite o nome do contato que você quer exluir")
        nome_excluir = gets.chomp
        excluir_contato(agenda, nome_excluir)
    elsif resposta == "m"
        mostrar_agenda(agenda)
    else
        puts("Saindo...")
        break
    end
end

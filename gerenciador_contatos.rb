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

adiciona_contato(agenda, "tibas", 93220367)
adiciona_contato(agenda, "maria", 93939393)
adiciona_contato(agenda, "tomy", 31133223)

buscar_contatos(agenda, "tibas")
buscar_contatos(agenda, "joao")

puts(agenda)
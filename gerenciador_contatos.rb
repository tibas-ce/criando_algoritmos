# Algoritmo: Gerenciador de Contatos

# criando array agenda para armazernar os contatos
agenda = []

# criando hash contato 
def adiciona_contato (lista, nome, telefone)
    contato = {nome: nome, telefone: telefone}
    lista.push(contato)
end

adiciona_contato(agenda, "tibas", 93220367)
adiciona_contato(agenda, "maria", 93939393)
adiciona_contato(agenda, "tomy", 31133223)

puts(agenda)
=begin
Algoritmo: Analisador de Vendas de E-commerce
Seu programa terá a tarefa de:
   * Calcular o valor total de todas as vendas.
   * Determinar qual foi a venda de maior valor.
   * Calcular a média de valor das vendas.
   * Contar quantas vendas superaram um valor específico (por exemplo, R$ 100,00).
=end

# criando a class venda
class Vendas
    attr_accessor :vendas

    def initialize 
        @vendas = []
    end

    # método de criar venda
    def add_venda (produto, valor)
        # criando venda como um sibolo
        venda = {produto: produto, valor: valor}
        @vendas.push(venda)     
    end

    # método calcular valor total de vendas
    def calcular_vendas 
        soma = 0.0
        @vendas.each do |venda|
            soma += venda[:valor] 
        end
        soma
    end

    # método encontrar maior venda
    def maior_venda 
        # O .first e usado para pegar o primeiro elemento de um array
        maior = @vendas.first
        # no caso do método maior_venda precisamos de um ponto de partida para comparar, o .each pecorre o array, o if compara, e maior muda de acordo com o resultado da comparação
        @vendas.each do |venda|
            if maior[:valor] < venda[:valor]
                maior = venda
            end
        end
        maior
    end

    # método de calcular media de vendas
    def calcular_media 
        soma = calcular_vendas
        # O .size é usado para obter o número de elementos dentro de um objeto que possui uma coleção, como uma string, array ou hash. Nesse caso o array @vendas
        media = soma / @vendas.size
        return media
    end

    # método contar vendas acima de um valor pre definido
    def contar_vendas
        valor_limite = 200.00
        contador = 0
        @vendas.each do |venda|
            if valor_limite < venda[:valor]
                contador += 1
            end
        end
        contador
    end

    def mostrar_lista (resposta)
        # variáveis chamando os métodos
        soma = calcular_vendas
        resultado_maior_venda = maior_venda
        media = calcular_media
        vendas_acima = contar_vendas
        # verificação da respota do usuário
        if resposta == "v"
            # O método each pecorre cada elemento das vendas e imprime cada um
            @vendas.each do |venda|
                puts("#{venda[:produto]} - #{venda[:valor]}")
            end
        elsif resposta == "t"  
            puts("Valor total de vendas = #{soma}")
        elsif resposta == "m"
            puts("Maior venda foi #{resultado_maior_venda[:produto]} com valor de #{resultado_maior_venda[:valor]}")
        elsif resposta == "e"    
            puts("A média de vendas é #{media}")
        elsif resposta == "a"
            puts("A quantidade de vendas acima de R$ 200,00 é #{vendas_acima}")
        end
    end
end

# teste dos métodos
vendas = Vendas.new()

vendas.add_venda("Teclado", 250.00)
vendas.add_venda("Mouse", 150.00)
vendas.add_venda("Monitor", 750.00)
vendas.add_venda("Notebook", 2500.00)

#vendas.mostrar_lista

# interações co  o usuário
loop do
    puts("Olá, bem vindo ao nosso analisador de vendas!\n O que você gostaria de fazer?\n Cadastrar uma nova venda dígite: c\n Ver lista de vendas dígite v\n Quer ver o valor total das vendas dígite t\n Ver maior venda dígite m\n Ver média de vendas dígite e\n Ver vendas acima de R$200,00 dígite a\n Dígite s para sair.")
    resposta = gets.chomp.downcase
    if resposta == "c"
        puts("Dígite o nome do produto:")
        produto = gets.chomp
        puts("Dígite o valor do produto:")       
        valor = gets.chomp.to_f
        vendas.add_venda(produto, valor)
    elsif resposta == "v"
        vendas.mostrar_lista(resposta)
    elsif resposta == "t"
        vendas.mostrar_lista(resposta)
    elsif resposta == "m"
        vendas.mostrar_lista(resposta)
    elsif resposta == "e"
        vendas.mostrar_lista(resposta)
    elsif resposta == "a"
        vendas.mostrar_lista(resposta)
    else
        puts("Saindo")
        break
    end
end
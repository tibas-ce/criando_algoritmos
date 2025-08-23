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

    def mostrar_lista
        soma = calcular_vendas
        resultado_maior_venda = maior_venda
        media = calcular_media
        # O método each pecorre cada elemento das vendas e imprime cada um
        @vendas.each do |venda|
            puts("#{venda[:produto]} - #{venda[:valor]}")
        end
        puts("Valor total de vendas = #{soma}")
        puts("Maior venda foi #{resultado_maior_venda[:produto]} com valor de #{resultado_maior_venda[:valor]}")
        puts("A média de vendas é #{media}")
    end
end

# teste dos métodos
vendas = Vendas.new()

vendas.add_venda("Notebook", 2500.00)
vendas.add_venda("Teclado", 250.00)
vendas.add_venda("Mouse", 150.00)
vendas.add_venda("Monitor", 750.00)

vendas.mostrar_lista
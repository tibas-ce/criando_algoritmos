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
    def calcular_vendas ()
        soma = 0.0
        @vendas.each do |venda|
            soma += venda[:valor] 
        end
        soma
    end

    # método encontrar maior venda
    def maior_venda 
        maior = @vendas.first
        @vendas.each do |venda|
            if maior[:valor] < venda[:valor]
                maior = venda
            end
        end
        maior
    end

    def mostrar_lista
        soma = calcular_vendas
        resultado_maior_venda = maior_venda
        # O método each pecorre cada elemento das vendas e imprime cada um
        @vendas.each do |venda|
            puts("#{venda[:produto]} - #{venda[:valor]}")
        end
        puts("Valor total de vendas = #{soma}")
        puts("Maior venda foi #{resultado_maior_venda[:produto]} com valor de #{resultado_maior_venda[:valor]}")
    end
end

# teste dos métodos
vendas = Vendas.new()

vendas.add_venda("Notebook", 2500.00)
vendas.add_venda("Teclado", 250.00)
vendas.add_venda("Mouse", 150.00)
vendas.add_venda("Monitor", 750.00)

vendas.mostrar_lista
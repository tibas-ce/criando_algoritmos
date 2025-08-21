# O Algoritmo: Gerenciador de Lista de Compras

# criando class carrinho de compras
class CarrinhoCompras
  attr_accessor :itens_categoria
  # método de inicialização
  def initialize 
    @itens_categoria = {}
  end

  # método adiciona categoria e item
  def adiciona_item (categoria, item)
    if @itens_categoria.key?(categoria)
      @itens_categoria[categoria].push(item)
    else
      @itens_categoria[categoria] = [item]      
    end

  end

  def mostrar_lista 
    @itens_categoria.each do |key, value|
      puts("#{key}")
      value.each do |item|
        puts(" - #{item}")
      end
    end
  end
end

#novo_carrinho = {}
carrinho = CarrinhoCompras.new
# entrada de dados do usuário
loop do

  # entrada da categoria
  puts("Dígite a categoria do produto:")
  categoria = gets.chomp
  loop do 
    puts("Digite o nome do produto:")
    item = gets.chomp
    carrinho.adiciona_item(categoria, item)
    puts("Quer continuar adicionando itens a mesma categoria? s (sim) - n (não)")
    resposta = gets.chomp.downcase
    if resposta != "s"
      #retornando ao loop principal
      puts("Retornando há categoria")
      break
    end
  end
  puts("Quer cadastrar mais uma categoria? s (sim) - n (não)")
  resposta1 = gets.chomp.downcase
  if resposta1 != "s"
    #saindo do loop
    break
  end
end


carrinho.mostrar_lista

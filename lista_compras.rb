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
    # o .key? verifica se a categoria exite na hash @itens_categoria
    if @itens_categoria.key?(categoria)
      #adiciona o item a categoria que ja existe
      @itens_categoria[categoria].push(item)
    else
      #cria nova categoria e adiciona o item
      @itens_categoria[categoria] = [item]      
    end
  end

  # método para imprimir a lista de compras
  def mostrar_lista
    # primeiro loop percorre as categorias 
    @itens_categoria.each do |key, value|
      puts("#{key}")
      # segundo loop percorre cada item dentro da categoria
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
    # entrada de produtos 
    puts("Digite o nome do produto:")
    item = gets.chomp
    carrinho.adiciona_item(categoria, item)
    puts("Quer continuar adicionando itens a mesma categoria? s (sim) - n (não)")
    resposta = gets.chomp.downcase
    # verifica se o usuário quer cadastrar mais itens na mesma categoria
    if resposta != "s"
      #retornando ao loop principal
      break
    end
  end
  
  puts("Quer cadastrar mais uma categoria? s (sim) - n (não)")
  resposta1 = gets.chomp.downcase
  # verifica se o usuário quer cadastrar mais uma categoria
  if resposta1 != "s"
    #saindo do loop
    break
  end
end

# imprimindo lista
carrinho.mostrar_lista

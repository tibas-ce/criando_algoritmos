# Algoritmo: Sistema de Gerenciamento de Veículos

# class mãe(ou superclass), que contém todas as caracteristicas que um veículo possui em comum, marca, modelo e ano.
class Veiculo
    attr_accessor :marca, :modelo, :ano

    def initialize (marca, modelo, ano)
        @marca = marca
        @modelo = modelo
        @ano = ano
    end

    def mostrar_veiculo (filho)
        puts("Seu veículo é um #{@marca}, modelo #{@modelo} fabricado em #{@ano}, #{filho}")
    end

end

 # class filho(ou subclass), herda caracteristicas. 
 # O < significa herança, no nosso caso Carro herda de Veículo
class Carro < Veiculo

    def initialize (marca, modelo, ano, portas)
        # O super() chama o inicialize do veículo, evitando repetir código
        super(marca, modelo, ano)
        @portas = portas
    end    

    def mostrar_carro
        # chamamos o método mostrar_veiculo, e adicionamos informações do filho
        puts(mostrar_veiculo "é tem #{@portas} portas.")
    end
end

class Moto < Veiculo

    def initialize (marca, modelo, ano, cilindrada)
        # O super() chama o inicialize do veículo, evitando repetir código
        super(marca, modelo, ano)
        @cilindrada = cilindrada
    end    

    def mostrar_moto
        # chamamos o método mostrar_veiculo, e adicionamos informações do filho
        puts(mostrar_veiculo "é tem #{@cilindrada}.")
    end
end

class Caminhao < Veiculo

    def initialize (marca, modelo, ano, eixos)
        # O super() chama o inicialize do veículo, evitando repetir código
        super(marca, modelo, ano)
        @eixos = eixos
    end    

    def mostrar_caminhao
        # chamamos o método mostrar_veiculo, e adicionamos informações do filho
        puts(mostrar_veiculo "é tem #{@eixos} eixos.")
    end
end


#testando
#novo_carro = Veiculo.new("FORD", "Corcel-II", "1982")
novo_carro = Carro.new("FORD", "Corcel-II", "1982", "4")
nova_moto = Moto.new("ROYAL ENFIELD", "HUNTER", "2023", "350cc")
novo_caminhao = Caminhao.new("VOLVO", "FH 540", "2020", "3")

novo_carro.mostrar_carro
nova_moto.mostrar_moto
novo_caminhao.mostrar_caminhao
# criando_algoritmos
Aprofundando conhecimentos em Ruby construindo algoritmos

Jornada de Aprendizado em Ruby

Este repositório documenta minha jornada de aprendizado em Ruby, desde os conceitos fundamentais até a implementação de programas orientados a objetos. Os algoritmos aqui presentes são o resultado de uma série de desafios práticos, cada um construído para consolidar um conjunto específico de habilidades de programação.

Habilidades Desenvolvidas

    Manipulação de Dados: Domínio de estruturas de dados essenciais como Array (listas ordenadas) e Hash (coleções de chave-valor), incluindo a manipulação de dados complexos como Array de Hashes.

    Controle de Fluxo: Uso de loops (each, loop) e condicionais (if/elsif/else) para criar programas interativos e tomar decisões lógicas.

    Manipulação de strings: Utilização de métodos como split, capitalize e join para transformar e formatar texto de forma eficiente.

    Programação Orientada a Objetos (POO): Criação de classes (Aluno, CarrinhoCompras, Vendas, Veiculo) para encapsular dados e comportamentos, além do uso de herança (<) para construir sistemas modulares e reutilizáveis, evitando a repetição de código.

Métodos e Conceitos Chave

Ao longo dos desafios, explorei e apliquei métodos poderosos que são fundamentais em Ruby, como:

    map: Para percorrer e transformar elementos de um array.

    find: Para buscar elementos que correspondam a uma condição específica.

    key?: Para verificar a existência de chaves em um hash.

    super: A palavra-chave central da herança, usada para chamar métodos da classe-mãe.

Este repositório é um registro da minha evolução como programador, mostrando a aplicação prática de cada novo conceito aprendido.

1 - Gerador de Perfil Simples (arquivo - gerador_perfil.rb)

Este algoritmo vai pedir o nome e o ano de nascimento de uma pessoa, e depois vai calcular e exibir a idade e um perfil personalizado. Ele usa os conceitos de entrada de dados, métodos, cálculo e saída de dados.

2 - Algoritmo: Verificador de Idade para Votação (arquivo - verificador.rb)

Este algoritmo vai pedir o nome e a idade de uma pessoa e vai dizer se ela já pode votar ou não. Ele usa o conceito de condicionais para tomar decisões com base nos dados de entrada.

3 - Algoritmo: Analisador de Notas de Alunos (arquivo - calcular_media.rb)

Este algoritmo vai coletar as notas de um aluno e, no final, vai dizer a média e se ele foi aprovado ou reprovado, com base nessas notas.

4 - Algoritmo: Gerenciador de Alunos e Notas (arquivo - gerenciador_aluno_nota.rb)

Este algoritmo simula um sistema simples para gerenciar alunos. Você vai criar a classe Aluno, adicionar vários alunos a uma lista e, no final, gerar um relatório com a situação de cada um.

5 - Algoritmo: Gerador de Nome de Usuário (arquivo - gerador_nome_usuario.rb)

Este algoritmo vai pedir o nome completo de uma pessoa e vai gerar um nome de usuário, garantindo que ele não tenha espaços e que a primeira letra de cada nome esteja em maiúscula.

6 - O Algoritmo: Gerenciador de Lista de Compras (arquivo - lista_compras.rb)

O objetivo é criar um sistema que armazena itens de compras por categoria. E no final imrpimir a lista.

7 - Algoritmo: Gerenciador de Contatos (arquivo - gerenciador_contatos.rb)

Este programa vai permitir que você crie uma lista de contatos. Cada contato será um Hash que armazena o nome e o telefone. Você poderá adicionar contatos e depois buscar por um deles.

8 - Algoritmo: Analisador de Vendas de E-commerce

Imagine que você trabalha para um e-commerce. Você recebeu uma lista de vendas e precisa analisar os dados para responder algumas perguntas de negócio.

Seu programa terá a tarefa de:

    * Calcular o valor total de todas as vendas.

    * Determinar qual foi a venda de maior valor.

    * Calcular a média de valor das vendas.

    * Contar quantas vendas superaram um valor específico (por exemplo, R$ 100,00).

9 - Algoritmo: Sistema de Gerenciamento de Veículos

Este projeto implementa um sistema simples de gerenciamento de veículos utilizando Programação Orientada a Objetos em Ruby.

A classe Veiculo contém atributos comuns (marca, modelo e ano) e o método exibir_informacoes.

As classes Carro, Moto e Caminhao herdam de Veiculo, adicionando atributos específicos (como número de portas ou eixos).

O super é utilizado para reaproveitar a inicialização da classe mãe.

São criados objetos de cada classe filha para demonstrar o funcionamento.

10 - Algoritmo de busca linear

Dada uma matriz, arr[] de n inteiros, e um elemento inteiro x, descubra se o elemento x está presente na matriz. Retorne o índice da primeira ocorrência de x no array ou -1 se não existir.
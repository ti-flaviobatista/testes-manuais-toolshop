# language: pt
Funcionalidade: Catálogo de produtos
  Como visitante da loja
  Quero navegar, buscar, filtrar e ordenar os produtos
  Para encontrar com rapidez o que preciso comprar

  Contexto:
    Dado que estou na página inicial da loja

  @CT-01
  Cenário: Exibir todos os produtos com foto, nome e preço
    Quando percorro todas as páginas da lista de produtos
    Então cada produto deve exibir uma foto
    E cada produto deve exibir o nome
    E cada produto deve exibir o preço

  @CT-02
  Cenário: Abrir a página de detalhe de um produto
    Quando clico no cartão de um produto
    Então devo ver a página de detalhe do produto clicado

  @CT-03
  Cenário: Navegar pela paginação
    Quando clico na página "2" da paginação
    Então a lista deve exibir outros produtos
    E a página "2" deve ficar destacada

  @CT-04 @CT-05
  Esquema do Cenário: Buscar produtos pelo nome
    Quando busco por "<termo>"
    Então o sistema deve <resultado>

    Exemplos:
      | termo  | resultado                                     |
      | hammer | exibir somente produtos com "hammer" no nome  |
      | ha     | não fazer a busca ou avisar que o mínimo é 3 caracteres |

  @CT-06
  Cenário: A busca limpa os filtros ativos
    Dado que marquei uma categoria no filtro
    Quando busco por "pliers"
    Então devo ver o resultado da busca
    E o filtro de categoria deve ficar desmarcado

  @CT-07
  Cenário: Filtrar por categoria
    Quando marco a categoria "Hand Tools"
    Então devo ver somente produtos da categoria "Hand Tools"

  @CT-08
  Cenário: Combinar filtros de categoria e marca
    Quando marco uma categoria
    E marco uma marca
    Então devo ver somente produtos que atendem aos dois filtros

  @CT-09 @CT-10
  Esquema do Cenário: Ordenar a lista de produtos
    Quando escolho a ordenação "<ordenacao>"
    Então os produtos devem aparecer <ordem>

    Exemplos:
      | ordenacao          | ordem                          |
      | Price (Low - High) | do menor para o maior preço    |
      | Name (A - Z)       | em ordem alfabética            |

  @CT-11
  Cenário: Faixa de preço padrão
    Então o filtro de preço deve começar com a faixa de $1 a $100
    E o valor máximo do filtro deve ser $200

  @CT-12
  Cenário: Produto sem estoque na lista
    Quando localizo um produto sem estoque
    Então o cartão do produto deve exibir "Out of stock"

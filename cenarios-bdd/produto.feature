# language: pt
Funcionalidade: Página de detalhe do produto
  Como visitante da loja
  Quero ver os detalhes de um produto e escolher a quantidade
  Para adicioná-lo ao carrinho

  Contexto:
    Dado que estou na página de detalhe de um produto com estoque

  @CT-13
  Cenário: Exibir as informações do produto
    Então devo ver a imagem, o nome, a descrição e o preço
    E devo ver a categoria e a marca do produto

  @CT-14
  Cenário: Aumentar e diminuir a quantidade
    Quando clico no botão "+" duas vezes
    Então a quantidade deve ser 3
    Quando clico no botão "−" uma vez
    Então a quantidade deve ser 2

  @CT-15
  Cenário: A quantidade não fica menor que 1
    Dado que a quantidade é 1
    Quando clico no botão "−"
    Então a quantidade deve continuar 1

  @CT-16
  Cenário: Digitar uma quantidade inválida
    Quando digito "0" no campo de quantidade
    Então a quantidade deve ser ajustada para 1

  @CT-17
  Cenário: Adicionar o produto ao carrinho
    Dado que escolhi a quantidade 2
    Quando clico em "Add to cart"
    Então devo ver a mensagem "Product added to shopping cart."
    E o ícone do carrinho deve indicar 2 itens

  @CT-18
  Cenário: Produto sem estoque não pode ser comprado
    Dado que estou na página de um produto sem estoque
    Então o botão "Add to cart" deve estar desativado
    E devo ver "Out of stock" em vermelho

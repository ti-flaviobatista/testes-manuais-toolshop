# language: pt
Funcionalidade: Carrinho de compras
  Como cliente
  Quero revisar os itens do carrinho
  Para conferir o pedido antes de pagar

  Contexto:
    Dado que adicionei um produto ao carrinho
    E estou na página do carrinho

  @CT-19
  Cenário: Exibir o conteúdo do carrinho
    Então devo ver uma tabela com as colunas Item, Quantity, Price, Total e Actions
    E os valores do produto devem estar corretos

  @CT-20
  Cenário: Alterar a quantidade de um item
    Quando mudo a quantidade do item para 3
    Então o total do item e o total do carrinho devem ser recalculados
    E devo ver a mensagem "Product quantity updated."

  @CT-21
  Cenário: Remover um item do carrinho
    Quando clico no botão de excluir do item
    Então o item deve sair do carrinho
    E o total do carrinho deve ser recalculado

  @CT-22
  Cenário: Carrinho vazio
    Quando removo todos os itens do carrinho
    Então devo ver a mensagem "Your shopping cart is empty"

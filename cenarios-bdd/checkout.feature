# language: pt
Funcionalidade: Finalização da compra (checkout)
  Como cliente
  Quero informar meus dados e a forma de pagamento
  Para concluir o meu pedido

  @CT-23
  Cenário: Fazer login durante o checkout
    Dado que não estou logado
    E tenho um produto no carrinho
    Quando clico em "Proceed to checkout"
    E entro com o e-mail "customer@practicesoftwaretesting.com" e a senha "welcome01"
    Então devo ser autenticado dentro do checkout
    E devo avançar para o passo de endereço

  @CT-24
  Cenário: Endereço com campo obrigatório vazio
    Dado que estou no passo de endereço do checkout
    Quando apago o campo "City"
    Então o campo deve ser destacado como inválido
    E o botão "Proceed" deve ficar desativado

  @CT-25
  Cenário: Cartão de crédito com validade vencida
    Dado que estou no passo de pagamento do checkout
    Quando escolho a forma de pagamento "Credit Card"
    E preencho a validade com "01/2020"
    Então devo ver a mensagem "Expiration date must be in the future."

  @CT-26
  Cenário: Opções de parcelamento
    Dado que estou no passo de pagamento do checkout
    Quando escolho a forma de pagamento "Buy Now Pay Later"
    Então devo ver o campo de parcelas com as opções 3, 6, 9 e 12

  @CT-27
  Cenário: Concluir o pedido
    Dado que estou no passo de pagamento do checkout
    Quando escolho a forma de pagamento "Cash on Delivery"
    E confirmo o pedido
    Então devo ver a confirmação com o número da fatura
    E o carrinho deve ficar vazio

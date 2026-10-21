# Casos de Teste – Practice Software Testing (Toolshop)

Versão testada: https://with-bugs.practicesoftwaretesting.com
Requisitos: [Histórias de usuário – Sprint 5](https://testsmith-io.github.io/practice-software-testing/#/user-stories/v5)
Versão em BDD (Gherkin): pasta [cenarios-bdd](cenarios-bdd)

**Como ler esta página:** cada caso tem um código (CT-01, CT-02...), os passos para executar, o resultado esperado e o critério de aceite de referência. A coluna **Status** recebe ✅ Passou, ❌ Falhou ou ⏸️ Bloqueado. Quando falha, a coluna **Bug** recebe o número da Issue.

## Resumo da execução

| Total | Passou | Falhou | Bloqueado | Não executado |
| --- | --- | --- | --- | --- |
| 34 | 0 | 0 | 0 | 34 |

---

## 1. Catálogo

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-01 | Exibir a lista de produtos | 1. Abrir a página inicial<br>2. Conferir os cartões de produto em todas as páginas da lista, usando a paginação para avançar | Todos os produtos, em todas as páginas, exibem imagem, nome e preço | Catálogo AC1 | Não executado | |
| CT-02 | Abrir o detalhe de um produto | 1. Clicar em um cartão de produto | Página de detalhe do produto clicado é aberta | Catálogo AC2 | Não executado | |
| CT-03 | Navegar pela paginação | 1. Rolar até o fim da lista<br>2. Clicar na página 2 | A grade mostra outros produtos e a página 2 fica destacada | Catálogo AC3 | Não executado | |
| CT-04 | Buscar com termo válido | 1. Digitar `hammer` na busca<br>2. Clicar em Search | Somente produtos com "hammer" no nome são exibidos | Catálogo AC4 | Não executado | |
| CT-05 | Buscar com termo menor que o limite | 1. Digitar `ha` na busca (2 caracteres)<br>2. Clicar em Search | A busca não é feita ou o sistema avisa que o mínimo é 3 caracteres | Catálogo AC4 (limite) | Não executado | |
| CT-06 | Busca limpa os filtros | 1. Marcar uma categoria<br>2. Buscar `pliers` | Resultado da busca exibido e o filtro de categoria desmarcado | Catálogo AC4 | Não executado | |
| CT-07 | Filtrar por categoria | 1. Marcar a categoria Hand Tools | Somente produtos de Hand Tools são exibidos | Catálogo AC5 | Não executado | |
| CT-08 | Combinar categoria e marca | 1. Marcar uma categoria<br>2. Marcar uma marca | Somente produtos que atendem aos dois filtros são exibidos | Catálogo AC8 | Não executado | |
| CT-09 | Ordenar por preço (menor para maior) | 1. Escolher Price (Low - High) na ordenação | Produtos exibidos do menor para o maior preço | Catálogo AC9 | Não executado | |
| CT-10 | Ordenar por nome (A-Z) | 1. Escolher Name (A - Z) na ordenação | Produtos exibidos em ordem alfabética | Catálogo AC9 | Não executado | |
| CT-11 | Faixa de preço padrão | 1. Abrir a página inicial<br>2. Observar o controle de preço | Faixa padrão de $1 a $100, com máximo de $200 | Catálogo AC10 | Não executado | |
| CT-12 | Produto sem estoque na lista | 1. Localizar um produto sem estoque | O cartão mostra "Out of stock" | Catálogo AC13 | Não executado | |

## 2. Produto

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-13 | Informações do produto | 1. Abrir o detalhe de um produto | Exibe imagem, nome, descrição, preço, categoria e marca | Produto AC1 | Não executado | |
| CT-14 | Aumentar e diminuir quantidade | 1. Clicar em + duas vezes<br>2. Clicar em − uma vez | Quantidade vai de 1 para 3 e depois para 2 | Produto AC4, AC5 | Não executado | |
| CT-15 | Quantidade mínima | 1. Com quantidade 1, clicar em − | Quantidade continua 1 | Produto AC6 | Não executado | |
| CT-16 | Digitar quantidade inválida | 1. Digitar `0` no campo de quantidade | O valor é ajustado para 1 | Produto AC7 (limite) | Não executado | |
| CT-17 | Adicionar ao carrinho | 1. Escolher quantidade 2<br>2. Clicar em Add to cart | Mensagem "Product added to shopping cart." e o ícone do carrinho mostra 2 itens | Produto AC8 | Não executado | |
| CT-18 | Produto sem estoque | 1. Abrir um produto sem estoque | Botão Add to cart desativado e "Out of stock" em vermelho | Produto AC9 | Não executado | |

## 3. Carrinho

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-19 | Conteúdo do carrinho | 1. Adicionar um produto<br>2. Abrir o carrinho | Tabela com Item, Quantity, Price, Total e Actions, com valores corretos | Carrinho AC1 | Não executado | |
| CT-20 | Alterar quantidade no carrinho | 1. Mudar a quantidade de um item para 3 | Totais recalculados e mensagem "Product quantity updated." | Carrinho AC2 | Não executado | |
| CT-21 | Remover item | 1. Clicar no botão de excluir de um item | Item sai do carrinho e o total é recalculado | Carrinho AC3 | Não executado | |
| CT-22 | Carrinho vazio | 1. Remover todos os itens | Mensagem "Your shopping cart is empty" | Carrinho AC4 | Não executado | |

## 4. Checkout

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-23 | Login durante o checkout | 1. Sem login, adicionar um produto<br>2. No carrinho, clicar em Proceed to checkout<br>3. Entrar com `customer@practicesoftwaretesting.com` / `welcome01` | Login feito dentro do checkout e liberado o passo de endereço | Checkout login AC1, AC4 | Não executado | |
| CT-24 | Endereço com campo vazio | 1. No passo de endereço, apagar o campo City | Campo destacado como inválido e botão Proceed desativado | Endereço AC2 | Não executado | |
| CT-25 | Cartão com validade vencida | 1. No pagamento, escolher Credit Card<br>2. Preencher validade `01/2020` | Mensagem "Expiration date must be in the future." | Pagamento AC4 | Não executado | |
| CT-26 | Opções de parcelamento | 1. Escolher Buy Now Pay Later | Campo de parcelas com as opções 3, 6, 9 e 12 | Pagamento AC5 | Não executado | |
| CT-27 | Concluir pedido | 1. Escolher Cash on Delivery<br>2. Confirmar | Confirmação com número da fatura e carrinho vazio | Pagamento AC7, AC9 | Não executado | |

## 5. Conta

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-28 | Cadastro com dados válidos | 1. Clicar em Sign in e depois em Register your account<br>2. Preencher todos os campos com dados válidos e senha `Teste@2026`<br>3. Clicar em Register | Conta criada e redirecionamento para o login | Cadastro AC1, AC6 | Não executado | |
| CT-29 | Senha fraca no cadastro | 1. Digitar a senha `abc` | Requisitos de senha exibidos, com os não cumpridos destacados, e indicador de força baixo | Cadastro AC2, AC3, AC4 | Não executado | |
| CT-30 | E-mail já cadastrado | 1. Cadastrar com `customer@practicesoftwaretesting.com` | Mensagem "Email is already in use." | Cadastro AC5 | Não executado | |
| CT-31 | Login válido | 1. Entrar com `customer@practicesoftwaretesting.com` / `welcome01` | Redirecionamento para a área do cliente (/account) | Login AC2 | Não executado | |
| CT-32 | Login com senha errada | 1. Entrar com e-mail válido e senha errada | Mensagem "Invalid email or password" | Login AC3 | Não executado | |
| CT-33 | Bloqueio após 3 tentativas | 1. Com uma conta criada no CT-28, errar a senha 3 vezes<br>2. Tentar de novo | Mensagem de conta bloqueada por excesso de tentativas | Login AC4 | Não executado | |

## 6. Navegação e compatibilidade

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-34 | Menus, textos e layout | 1. Percorrer o menu superior (Home, Categories, Contact, Sign in)<br>2. Repetir no Edge e em tela de celular (F12 → modo dispositivo) | Todos os links funcionam, textos corretos e layout sem quebras nos dois navegadores e no celular | Navegabilidade | Não executado | |

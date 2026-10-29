# Casos de Teste – Practice Software Testing (Toolshop)

Versão testada: https://with-bugs.practicesoftwaretesting.com
Requisitos: [Histórias de usuário – Sprint 5](https://testsmith-io.github.io/practice-software-testing/#/user-stories/v5)
Versão em BDD (Gherkin): pasta [cenarios-bdd](cenarios-bdd)

**Como ler esta página:** cada caso tem um código (CT-01, CT-02...), os passos para executar, o resultado esperado e o critério de aceite de referência. A coluna **Status** recebe ✅ Passou, ❌ Falhou ou ⏸️ Bloqueado. Quando falha, a coluna **Bug** recebe o número da Issue.

**Execução:** 28/10/2026 · Windows 11 · Chrome (Chromium 152) em desktop e em tela de celular 375×812 (modo dispositivo) · Edge: ver CT-34.

## Resumo da execução

| Total | Passou | Falhou | Bloqueado | Não executado |
| --- | --- | --- | --- | --- |
| 34 | 17 | 15 | 2 | 0 |

---

## 1. Catálogo

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-01 | Exibir a lista de produtos | 1. Abrir a página inicial<br>2. Conferir os cartões de produto em todas as páginas da lista, usando a paginação para avançar | Todos os produtos, em todas as páginas, exibem imagem, nome e preço | Catálogo AC1 | ❌ Falhou | [#1](../../issues/1) |
| CT-02 | Abrir o detalhe de um produto | 1. Clicar em um cartão de produto | Página de detalhe do produto clicado é aberta | Catálogo AC2 | ✅ Passou | |
| CT-03 | Navegar pela paginação | 1. Rolar até o fim da lista<br>2. Clicar na página 2 | A grade mostra outros produtos e a página 2 fica destacada | Catálogo AC3 | ✅ Passou | |
| CT-04 | Buscar com termo válido | 1. Digitar `hammer` na busca<br>2. Clicar em Search | Somente produtos com "hammer" no nome são exibidos | Catálogo AC4 | ❌ Falhou | [#2](../../issues/2) |
| CT-05 | Buscar com termo menor que o limite | 1. Digitar `ha` na busca (2 caracteres)<br>2. Clicar em Search | A busca não é feita ou o sistema avisa que o mínimo é 3 caracteres | Catálogo AC4 (limite) | ✅ Passou | |
| CT-06 | Busca limpa os filtros | 1. Marcar uma categoria<br>2. Buscar `pliers` | Resultado da busca exibido e o filtro de categoria desmarcado | Catálogo AC4 | ✅ Passou | |
| CT-07 | Filtrar por categoria | 1. Marcar a categoria Pliers (grupo Hand Tools) | Somente produtos de Pliers são exibidos | Catálogo AC5 | ✅ Passou | |
| CT-08 | Combinar categoria e marca | 1. Marcar uma categoria<br>2. Marcar uma marca | Somente produtos que atendem aos dois filtros são exibidos | Catálogo AC8 | ✅ Passou | |
| CT-09 | Ordenar por preço (menor para maior) | 1. Escolher Price (Low - High) na ordenação | Produtos exibidos do menor para o maior preço | Catálogo AC9 | ❌ Falhou | [#3](../../issues/3) |
| CT-10 | Ordenar por nome (A-Z) | 1. Escolher Name (A - Z) na ordenação | Produtos exibidos em ordem alfabética | Catálogo AC9 | ❌ Falhou | [#4](../../issues/4) |
| CT-11 | Faixa de preço padrão | 1. Abrir a página inicial<br>2. Observar o controle de preço | Faixa padrão de $1 a $100, com máximo de $200 | Catálogo AC10 | ✅ Passou | |
| CT-12 | Produto sem estoque na lista | 1. Localizar um produto sem estoque | O cartão mostra "Out of stock" | Catálogo AC13 | ✅ Passou | |

**Observações da execução**
- CT-01: três cartões aparecem sem imagem, um em cada página: Slip Joint Pliers (página 1), Wood Saw (página 2) e Belt Sander (página 3).
- CT-03: a paginação tem 3 páginas (9 + 9 + 8 = 26 produtos) e destaca a página atual.
- CT-04: aparecem 6 martelos, mas falta o **Sledgehammer**, que também tem "hammer" no nome.
- CT-05: a busca não é feita, mas nenhuma mensagem avisa o mínimo de 3 caracteres.
- CT-07: passo ajustado durante a execução. "Hand Tools" é só o título do grupo, sem caixa para marcar; o filtro é feito pelas subcategorias.

## 2. Produto

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-13 | Informações do produto | 1. Abrir o detalhe de um produto | Exibe imagem, nome, descrição, preço, categoria e marca | Produto AC1 | ✅ Passou | |
| CT-14 | Aumentar e diminuir quantidade | 1. Clicar em + duas vezes<br>2. Clicar em − uma vez | Quantidade vai de 1 para 3 e depois para 2 | Produto AC4, AC5 | ❌ Falhou | [#5](../../issues/5) |
| CT-15 | Quantidade mínima | 1. Com quantidade 1, clicar em − | Quantidade continua 1 | Produto AC6 | ✅ Passou | |
| CT-16 | Digitar quantidade inválida | 1. Digitar `0` no campo de quantidade | O valor é ajustado para 1 | Produto AC7 (limite) | ✅ Passou | |
| CT-17 | Adicionar ao carrinho | 1. Escolher quantidade 2<br>2. Clicar em Add to cart | Mensagem "Product added to shopping cart." e o ícone do carrinho mostra 2 itens | Produto AC8 | ❌ Falhou | [#6](../../issues/6) |
| CT-18 | Produto sem estoque | 1. Abrir um produto sem estoque | Botão Add to cart desativado e "Out of stock" em vermelho | Produto AC9 | ✅ Passou | |

**Observações da execução**
- CT-15: passou, mas o botão − não funciona em nenhuma situação (ver CT-14).
- CT-17: a quantidade 2 foi digitada no campo, porque o botão + não funciona. O item entra no carrinho, mas aparece a mensagem de erro "Oeps, something went wrong.".

## 3. Carrinho

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-19 | Conteúdo do carrinho | 1. Adicionar um produto<br>2. Abrir o carrinho | Tabela com Item, Quantity, Price, Total e Actions, com valores corretos | Carrinho AC1 | ❌ Falhou | [#7](../../issues/7) |
| CT-20 | Alterar quantidade no carrinho | 1. Mudar a quantidade de um item para 3 | Totais recalculados e mensagem "Product quantity updated." | Carrinho AC2 | ❌ Falhou | [#8](../../issues/8) |
| CT-21 | Remover item | 1. Clicar no botão de excluir de um item | Item sai do carrinho e o total é recalculado | Carrinho AC3 | ❌ Falhou | [#9](../../issues/9) |
| CT-22 | Carrinho vazio | 1. Remover todos os itens | Mensagem "Your shopping cart is empty" | Carrinho AC4 | ⏸️ Bloqueado | [#9](../../issues/9) |

**Observações da execução**
- CT-20: o total geral é recalculado certo, mas a mensagem não aparece.
- CT-22: bloqueado porque não é possível remover itens (CT-21).

## 4. Checkout

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-23 | Login durante o checkout | 1. Sem login, adicionar um produto<br>2. No carrinho, clicar em Proceed to checkout<br>3. Entrar com `customer@practicesoftwaretesting.com` / `welcome01` | Login feito dentro do checkout e liberado o passo de endereço | Checkout login AC1, AC4 | ✅ Passou | |
| CT-24 | Endereço com campo vazio | 1. No passo de endereço, apagar o campo City | Campo destacado como inválido e botão Proceed desativado | Endereço AC2 | ✅ Passou | |
| CT-25 | Cartão com validade vencida | 1. No pagamento, escolher Credit Card<br>2. Preencher validade `01/2020` | Mensagem "Expiration date must be in the future." | Pagamento AC4 | ⏸️ Bloqueado | [#10](../../issues/10) |
| CT-26 | Opções de parcelamento | 1. Escolher Buy Now Pay Later | Campo de parcelas com as opções 3, 6, 9 e 12 | Pagamento AC5 | ❌ Falhou | [#10](../../issues/10) |
| CT-27 | Concluir pedido | 1. Escolher Cash on Delivery<br>2. Confirmar | Confirmação com número da fatura e carrinho vazio | Pagamento AC7, AC9 | ❌ Falhou | [#10](../../issues/10) |

**Observações da execução**
- CT-24: aparece "City is required." embaixo do campo.
- CT-25: ao escolher Credit Card, os campos do cartão não aparecem (a tela continua pedindo nome e número de conta bancária). Por isso não foi possível testar a validade vencida.
- CT-27: o botão de confirmar fica desativado, porque a tela exige nome e número de conta bancária mesmo com pagamento na entrega.

## 5. Conta

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-28 | Cadastro com dados válidos | 1. Clicar em Sign in e depois em Register your account<br>2. Preencher todos os campos com dados válidos e senha `Teste@2026`<br>3. Clicar em Register | Conta criada e redirecionamento para o login | Cadastro AC1, AC6 | ✅ Passou | |
| CT-29 | Senha fraca no cadastro | 1. Digitar a senha `abc` | Requisitos de senha exibidos, com os não cumpridos destacados, e indicador de força baixo | Cadastro AC2, AC3, AC4 | ❌ Falhou | [#13](../../issues/13) |
| CT-30 | E-mail já cadastrado | 1. Cadastrar com `customer@practicesoftwaretesting.com` | Mensagem "Email is already in use." | Cadastro AC5 | ❌ Falhou | [#14](../../issues/14) |
| CT-31 | Login válido | 1. Entrar com `customer@practicesoftwaretesting.com` / `welcome01` | Redirecionamento para a área do cliente (/account) | Login AC2 | ✅ Passou | |
| CT-32 | Login com senha errada | 1. Entrar com e-mail válido e senha errada | Mensagem "Invalid email or password" | Login AC3 | ✅ Passou | |
| CT-33 | Bloqueio após 3 tentativas | 1. Com uma conta criada no CT-28, errar a senha 3 vezes<br>2. Tentar de novo | Mensagem de conta bloqueada por excesso de tentativas | Login AC4 | ❌ Falhou | [#15](../../issues/15) |

**Observações da execução**
- CT-28: na primeira tentativa o sobrenome "Teste QA" foi recusado com "Invalid character." por causa do espaço ([#12](../../issues/12)). Com "Teste" o cadastro funcionou. Nenhuma mensagem confirma o cadastro; a tela só muda para o login. Os rótulos "Country" e "State" do formulário estão trocados ([#21](../../issues/21)).
- CT-29: aparece "Password must be minimal 10 characters long.", mas a regra pede no mínimo 8. Teste de valor limite: a senha `Teste@26` (8 caracteres, com maiúscula, minúscula, número e símbolo) também é recusada; com 10 caracteres é aceita.
- CT-30: a mensagem mostrada revela a dica de senha do dono do e-mail.
- CT-33: com uma conta nova (login confirmado antes do teste), foram feitas 3 tentativas com senhas erradas diferentes (`errada111`, `errada222`, `errada333`). Nenhum aviso de bloqueio apareceu, e em seguida o login com a senha certa entrou normalmente.

## 6. Navegação e compatibilidade

| ID | Cenário | Passos | Resultado esperado | Ref. | Status | Bug |
| --- | --- | --- | --- | --- | --- | --- |
| CT-34 | Menus, textos e layout | 1. Percorrer o menu superior (Home, Categories, Contact, Sign in)<br>2. Repetir no Edge e em tela de celular (F12 → modo dispositivo) | Todos os links funcionam, textos corretos e layout sem quebras nos dois navegadores e no celular | Navegabilidade | ❌ Falhou | [#16](../../issues/16), [#19](../../issues/19) |

**Observações da execução**
- Chrome: o menu "Home" abre a página de contato; o menu Categories tem um item "UNDEFINED" (página vazia) e o item "Chainsaws" abre uma página de erro 404. Há erros de digitação no menu e na tela inicial.
- Celular (375×812): layout sem rolagem para os lados e menu sanduíche funcionando.
- Edge: pendente.

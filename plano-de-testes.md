# Plano de Testes – Practice Software Testing (Toolshop)

| Item | Informação |
| --- | --- |
| Sistema | Practice Software Testing – Toolshop (loja virtual de ferramentas) |
| Versão testada | Sprint 5 *with bugs* – https://with-bugs.practicesoftwaretesting.com |
| Requisitos de referência | [Histórias de usuário – Sprint 5](https://testsmith-io.github.io/practice-software-testing/#/user-stories/v5) |
| Responsável | Flávio da Silva Batista |
| Versão do documento | 1.0 |

## 1. Objetivo

Verificar se as principais funcionalidades da loja atendem aos critérios de aceite das histórias de usuário, avaliar a navegação do ponto de vista do cliente e registrar os defeitos encontrados.

## 2. Sobre o sistema

O Toolshop é uma loja virtual de ferramentas criada para a prática de testes de software. O cliente pode buscar e filtrar produtos, adicionar itens ao carrinho, criar conta, fazer login e finalizar a compra escolhendo uma forma de pagamento.

A versão *with bugs* é a mesma aplicação da Sprint 5 com defeitos inseridos de propósito, para treino de busca de bugs.

## 3. Ambiente de teste

| Item | Configuração |
| --- | --- |
| Sistema operacional | Windows 11 Home Single Language – 25H2 |
| Navegador principal | Google Chrome (versão registrada em cada execução) |
| Navegador secundário | Microsoft Edge (versão registrada em cada execução) |
| Resoluções | Desktop (1366×768 ou superior) e celular (375×812, pelo modo de dispositivo do DevTools) |
| Ferramentas de apoio | DevTools do navegador, Ferramenta de Captura do Windows, GitHub Issues |

## 4. Escopo

### 4.1 Dentro do escopo

| Área | Funcionalidades |
| --- | --- |
| Catálogo | Lista de produtos, paginação, busca, filtros por categoria, marca e preço, ordenação |
| Produto | Página de detalhe, seletor de quantidade, adicionar ao carrinho, produto sem estoque |
| Carrinho | Alterar quantidade, remover item, carrinho vazio, totais |
| Checkout | Login durante a compra, endereço de cobrança, formas de pagamento, confirmação do pedido |
| Conta | Cadastro de usuário (incluindo regras de senha) e login (incluindo bloqueio de conta) |
| Navegação | Menus, links, retorno entre telas, responsividade e compatibilidade entre navegadores |

### 4.2 Fora do escopo

- Favoritos, faturas, perfil, troca de senha e autenticação em dois fatores
- Painel administrativo, chat, descontos por localização e troca de idioma
- Login com Google
- Testes de API, desempenho, carga e segurança
- Testes automatizados (serão feitos no projeto de automação com Cypress)

## 5. Estratégia de teste

### 5.1 Tipos de teste

- **Funcional:** cada critério de aceite vira pelo menos um caso de teste.
- **Exploratório:** sessões curtas de uso livre para encontrar falhas que os requisitos não preveem.
- **Navegabilidade e usabilidade:** links, menus, textos, mensagens e clareza do fluxo de compra.
- **Compatibilidade:** os fluxos principais são repetidos no Edge e em tela de celular.
- **Regressão:** depois de cada bug registrado, os casos ligados à mesma tela são executados de novo.

### 5.2 Técnicas

- **Partição de equivalência:** dados válidos e inválidos (exemplo: e-mail cadastrado e não cadastrado).
- **Análise de valor limite:** valores nas bordas das regras (exemplo: busca com 2, 3, 40 e 41 caracteres; quantidade 0, 1 e 2).
- **Tabela de decisão:** combinações de filtros e de formas de pagamento.

## 6. Requisitos de referência

Os casos de teste usam como base os critérios de aceite (AC) das histórias de usuário da Sprint 5. Resumo das regras principais:

| Código | Funcionalidade | Regra resumida |
| --- | --- | --- |
| CAT | Catálogo | Busca aceita de 3 a 40 caracteres e limpa os filtros; filtros de categoria e marca podem ser combinados; ordenação por nome (A-Z, Z-A) e preço (maior e menor); faixa de preço padrão de $1 a $100, máximo de $200; produto sem estoque mostra "Out of stock". |
| PROD | Produto | Mostra imagem, nome, descrição, preço, categoria e marca; quantidade começa em 1, não fica menor que 1 e aceita digitação; ao adicionar, mostra "Product added to shopping cart."; sem estoque, o botão fica desativado. |
| CART | Carrinho | Tabela com item, quantidade, preço, total e ações; ao mudar a quantidade, os totais são recalculados e aparece "Product quantity updated."; carrinho vazio mostra "Your shopping cart is empty". |
| CHK | Checkout | Visitante faz login dentro do checkout; endereço exige rua, cidade, estado, país e CEP, com limites de caracteres; pagamento por transferência, dinheiro na entrega, cartão, parcelado ou vale-presente, cada um com seus campos; cartão vencido mostra "Expiration date must be in the future."; pedido concluído mostra o número da fatura e esvazia o carrinho. |
| REG | Cadastro | Todos os campos obrigatórios; senha com no mínimo 8 caracteres, maiúscula, minúscula, número e caractere especial, com indicador de força; e-mail repetido mostra "Email is already in use."; cadastro concluído leva para o login. |
| LOG | Login | Credenciais erradas mostram "Invalid email or password"; após 3 tentativas erradas seguidas a conta é bloqueada (contas de administrador não são bloqueadas); usuário comum vai para /account e administrador para /admin/dashboard. |

## 7. Massa de dados

| Uso | E-mail | Senha |
| --- | --- | --- |
| Cliente cadastrado (conta pública de teste) | customer@practicesoftwaretesting.com | welcome01 |
| Segundo cliente (conta pública de teste) | customer2@practicesoftwaretesting.com | welcome01 |
| Novo cadastro | qa.flavio.AAAAMMDD-N@teste.com (data do teste + número) | Teste@2026 |
| E-mail não cadastrado | naoexiste.qa@teste.com | Teste@2026 |

As contas públicas de teste estão na documentação oficial do sistema. Os testes de bloqueio de conta são feitos **somente com contas criadas pelo testador**, para não bloquear as contas públicas usadas por outras pessoas.

Dados de pagamento são fictícios (exemplo: cartão `1111-1111-1111-1111`). Nenhum dado real é usado.

## 8. Critérios de entrada e saída

**Entrada**
- Site disponível no endereço da versão testada.
- Plano e casos de teste revisados.

**Saída**
- Todos os casos de teste executados e com resultado registrado.
- Todos os defeitos registrados como Issues, com evidência.
- Relatório final publicado.

## 9. Gestão de defeitos

Cada defeito é registrado como uma **Issue** neste repositório, com: título, ambiente, pré-condição, passos para reproduzir, resultado esperado, resultado obtido, severidade, prioridade e evidência.

| Severidade | Quando usar |
| --- | --- |
| Crítica | Impede a compra ou o acesso, ou causa cobrança errada |
| Alta | Funcionalidade principal falha e não há contorno |
| Média | Funcionalidade falha, mas existe contorno |
| Baixa | Problema visual, de texto ou de usabilidade que não impede o uso |

## 10. Entregáveis

- [Plano de testes](plano-de-testes.md) (este documento)
- [Casos de teste](casos-de-teste.md)
- Relatórios de defeitos (aba **Issues**)
- Relatório final de execução

## 11. Riscos

| Risco | Ação |
| --- | --- |
| O site é público e compartilhado; outras pessoas podem alterar dados das contas de teste | Usar contas próprias sempre que o teste mudar dados |
| A versão *with bugs* pode ser atualizada e mudar de comportamento | Registrar a data, o horário e a versão exibida no rodapé em cada execução |
| Indisponibilidade do site | Registrar o horário e retomar depois |

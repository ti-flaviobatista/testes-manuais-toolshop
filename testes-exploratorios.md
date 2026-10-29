# Testes Exploratórios – Practice Software Testing (Toolshop)

Sessões curtas de uso livre, feitas junto com a execução dos casos de teste, para encontrar falhas que os requisitos não preveem.

**Data:** 28/10/2026 · **Ambiente:** Windows 11, Google Chrome (Chromium 152), desktop e celular 375×812 · **Versão:** https://with-bugs.practicesoftwaretesting.com

---

## Sessão 1 – Catálogo e página de produto

**Missão:** navegar pela loja como um cliente que procura uma ferramenta, prestando atenção em textos, imagens e botões.

**Áreas visitadas:** página inicial, coluna de filtros, busca, página de produto, versão de celular.

**O que encontrei**

| Achado | Issue |
| --- | --- |
| Logo da loja quebrado no topo de todas as páginas; ícone do título "Search" também quebrado | [#18](../../issues/18) |
| Erros de digitação: "Sorth", "Serch", "Contakt", "Reltded products" | [#19](../../issues/19) |
| Botão "Add to favourites" cobre parte do botão "Add to cart" | [#20](../../issues/20) |
| Depois de pesquisar, o campo de busca fica vazio; o termo só aparece em "Searched for: ..." | Observação (não registrada como bug) |
| A busca com menos de 3 letras não faz nada e não explica o motivo | Observação (sugestão de melhoria) |
| Celular: layout sem rolagem para os lados e menu sanduíche funcionando | Sem problema |

---

## Sessão 2 – Cadastro, login e checkout

**Missão:** criar uma conta, entrar e tentar fechar uma compra, usando dados como os de um cliente brasileiro.

**Áreas visitadas:** cadastro, login, menu do usuário, passos de endereço e pagamento do checkout.

**O que encontrei**

| Achado | Issue |
| --- | --- |
| Sobrenome com espaço ("Teste QA") é recusado com "Invalid character." | [#12](../../issues/12) |
| Menu do usuário logado mostra "User Data not found" | [#17](../../issues/17) |
| No cadastro, os rótulos "Country" e "State" estão trocados | [#21](../../issues/21) |
| A lista de pagamentos tem a opção "Errror 304 - Missing Payment Gateway" | [#11](../../issues/11) |
| O endereço do cliente de teste vem com State vazio e Postcode "missing value" | Observação (pode ser dado da conta pública) |
| O cadastro concluído não mostra nenhuma mensagem de sucesso; a tela só muda para o login | Observação (sugestão de melhoria) |
| Duas contas de teste criadas mais cedo deixaram de aceitar a senha certa mais tarde, mas uma conta nova criada em seguida funcionou normalmente | Observação (causa não identificada; não registrada como bug) |

---

## O que aprendi

- Usar dados reais do dia a dia (como um sobrenome composto) encontra bugs que os dados "perfeitos" dos casos de teste não encontram.
- Ler com atenção todas as mensagens da tela vale a pena: a mensagem de e-mail já cadastrado revelou uma falha de segurança ([#14](../../issues/14)).

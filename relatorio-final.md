# Relatório Final de Testes – Practice Software Testing (Toolshop)

| Item | Informação |
| --- | --- |
| Sistema | Practice Software Testing – Toolshop |
| Versão testada | Sprint 5 with bugs – https://with-bugs.practicesoftwaretesting.com |
| Data da execução | 28/10/2026 |
| Ambiente | Windows 11 · Google Chrome (Chromium 152) · celular 375×812 pelo modo dispositivo |
| Responsável | Flávio da Silva Batista |
| Documentos | [Plano de testes](plano-de-testes.md) · [Casos de teste](casos-de-teste.md) · [Testes exploratórios](testes-exploratorios.md) · [Issues](../../issues) |

## 1. Resumo

Foram executados os 34 casos de teste do plano e duas sessões de teste exploratório. **17 casos passaram, 15 falharam e 2 ficaram bloqueados.** Foram registrados **21 defeitos** como Issues.

O principal problema é que **não é possível concluir uma compra**: o passo de pagamento não muda os campos conforme a forma de pagamento escolhida e exige dados de conta bancária mesmo no pagamento na entrega. Também foram encontradas duas falhas de segurança no login e no cadastro.

## 2. Resultado por área

| Área | Casos | Passou | Falhou | Bloqueado |
| --- | --- | --- | --- | --- |
| Catálogo | 12 | 8 | 4 | 0 |
| Produto | 6 | 4 | 2 | 0 |
| Carrinho | 4 | 0 | 3 | 1 |
| Checkout | 5 | 2 | 2 | 1 |
| Conta | 6 | 3 | 3 | 0 |
| Navegação | 1 | 0 | 1 | 0 |
| **Total** | **34** | **17** | **15** | **2** |

## 3. Defeitos por severidade

| Severidade | Quantidade | Issues |
| --- | --- | --- |
| Crítica | 1 | #10 |
| Alta | 3 | #9, #14, #15 |
| Média | 9 | #2, #3, #4, #5, #6, #7, #12, #13, #16 |
| Baixa | 8 | #1, #8, #11, #17, #18, #19, #20, #21 |
| **Total** | **21** | |

## 3.1 Defeitos por prioridade

| Prioridade | Quantidade | Issues |
| --- | --- | --- |
| Alta | 4 | #9, #10, #14, #15 |
| Média | 15 | #2, #3, #4, #5, #6, #7, #11, #12, #13, #16, #17, #18, #19, #20, #21 |
| Baixa | 2 | #1, #8 |
| **Total** | **21** | |

Os critérios de severidade e de prioridade estão na seção 9 do [plano de testes](plano-de-testes.md#9-gestão-de-defeitos), com base no ISTQB CTFL Syllabus v4.0.1, seção 5.5.

## 4. Defeitos mais importantes

1. **[#10](../../issues/10) – Pagamento não funciona (Crítica).** Nenhuma forma de pagamento mostra os campos certos e o pedido não pode ser concluído.
2. **[#14](../../issues/14) – Dica de senha exposta (Alta).** Tentar se cadastrar com um e-mail que já existe mostra a dica de senha do dono da conta.
3. **[#15](../../issues/15) – Conta não é bloqueada (Alta).** Depois de 3 senhas erradas, a conta continua aceitando login, o que facilita tentativas de adivinhar a senha.
4. **[#9](../../issues/9) – Não dá para excluir item do carrinho (Alta).** O cliente não consegue tirar produtos do carrinho.

## 5. O que não foi testado ou ficou incompleto

- **CT-25 (cartão vencido):** bloqueado, porque os campos do cartão não aparecem (#10).
- **CT-22 (carrinho vazio):** bloqueado, porque não é possível remover itens (#9).
- **Microsoft Edge:** a repetição do CT-34 no Edge ficou pendente.
- Por segurança, os testes de bloqueio de conta foram feitos só com uma conta criada para o teste, e não com as contas públicas.

## 6. Conclusão e recomendação

Do ponto de vista do cliente, a loja **não está pronta para uso**: é possível encontrar produtos e montar o carrinho, mas não é possível fechar a compra. A recomendação é corrigir primeiro o pagamento (#10) e as falhas de segurança (#14 e #15), e depois o carrinho (#9). Depois das correções, os casos que falharam devem ser executados de novo (teste de regressão).

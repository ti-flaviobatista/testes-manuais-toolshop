# Testes Manuais – Practice Software Testing (Toolshop)

Projeto de testes manuais da loja virtual de ferramentas **Practice Software Testing**, na versão com defeitos inseridos de propósito para treino de busca de bugs.

## O que foi testado

Catálogo (busca, filtros e ordenação), página de produto, carrinho, checkout com formas de pagamento, cadastro e login, além de navegação, responsividade e compatibilidade entre navegadores.

Os casos de teste foram escritos a partir dos critérios de aceite das [histórias de usuário oficiais](https://testsmith-io.github.io/practice-software-testing/#/user-stories/v5) do sistema.

## Documentos

| Documento | Conteúdo |
| --- | --- |
| [Plano de testes](plano-de-testes.md) | Objetivo, escopo, ambiente, estratégia, técnicas, massa de dados, critérios e riscos |
| [Casos de teste](casos-de-teste.md) | 34 casos de teste com passos, resultado esperado e rastreabilidade com os requisitos |
| [Cenários BDD](cenarios-bdd) | Os mesmos 34 casos escritos em Gherkin (Dado/Quando/Então), com Esquemas do Cenário para dados variados |
| [Bugs encontrados](../../issues) | Defeitos registrados como Issues, com passos para reproduzir e evidências |

## Técnicas aplicadas

- Partição de equivalência
- Análise de valor limite
- Tabela de decisão
- Testes exploratórios
- BDD (Behavior Driven Development) com Gherkin

## Ambiente

- **Sistema:** https://with-bugs.practicesoftwaretesting.com
- **Sistema operacional:** Windows 11
- **Navegadores:** Google Chrome e Microsoft Edge

## Status

🟡 Em execução

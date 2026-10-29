# Testes Manuais – Practice Software Testing (Toolshop)

Projeto de testes manuais da loja virtual de ferramentas **Practice Software Testing**, na versão com defeitos inseridos de propósito para treino de busca de bugs.

## O que foi testado

Catálogo (busca, filtros e ordenação), página de produto, carrinho, checkout com formas de pagamento, cadastro e login, além de navegação, responsividade e compatibilidade entre navegadores.

Os casos de teste foram escritos a partir dos critérios de aceite das [histórias de usuário oficiais](https://testsmith-io.github.io/practice-software-testing/#/user-stories/v5) do sistema.

## Resultado

| Casos executados | Passou | Falhou | Bloqueado | Bugs registrados |
| --- | --- | --- | --- | --- |
| 34 | 17 | 15 | 2 | 21 |

Principais defeitos: o pedido não pode ser concluído porque o pagamento não funciona, a tela de cadastro revela a dica de senha de outro usuário e a conta não é bloqueada depois de 3 senhas erradas. Detalhes no [relatório final](relatorio-final.md).

## Documentos

| Documento | Conteúdo |
| --- | --- |
| [Plano de testes](plano-de-testes.md) | Objetivo, escopo, ambiente, estratégia, técnicas, massa de dados, critérios de severidade e prioridade (com base no ISTQB) e riscos |
| [Casos de teste](casos-de-teste.md) | 34 casos de teste com passos, resultado esperado, status da execução e link para o bug |
| [Cenários BDD](cenarios-bdd) | Os mesmos 34 casos escritos em Gherkin (Dado/Quando/Então), com Esquemas do Cenário para dados variados |
| [Testes exploratórios](testes-exploratorios.md) | Duas sessões de teste exploratório e o que foi encontrado em cada uma |
| [Bugs encontrados](../../issues) | 21 defeitos registrados como Issues, com passos para reproduzir, severidade, prioridade e evidências |
| [Relatório final](relatorio-final.md) | Resumo da execução, bugs por severidade, o que ficou pendente e recomendação |

## Técnicas aplicadas

- Partição de equivalência
- Análise de valor limite (exemplo: senha com 8 e com 10 caracteres)
- Tabela de decisão
- Testes exploratórios
- BDD (Behavior Driven Development) com Gherkin

## Ambiente

- **Sistema:** https://with-bugs.practicesoftwaretesting.com
- **Sistema operacional:** Windows 11
- **Navegadores:** Google Chrome e Microsoft Edge
- **Celular:** tela 375×812 pelo modo dispositivo do navegador

## Uso de IA neste projeto

Este projeto foi feito com apoio do Claude (IA da Anthropic). A IA executou parte dos casos de teste no navegador, capturou e marcou as evidências e redigiu as Issues e os relatórios. Eu planejei os testes, executei os cenários de cadastro e login, revisei os resultados, propus melhorias no processo (marcação das evidências e tentativas de senha distintas no teste de bloqueio) e validei cada bug antes do registro.

## Status

🟢 Execução concluída · repetição no Microsoft Edge pendente

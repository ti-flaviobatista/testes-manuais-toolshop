# language: pt
Funcionalidade: Navegação, layout e compatibilidade
  Como visitante da loja
  Quero que menus, textos e layout funcionem em qualquer navegador e tela
  Para usar a loja sem dificuldade

  @CT-34
  Esquema do Cenário: Menus, textos e layout
    Dado que abro a loja no "<ambiente>"
    Quando percorro os itens do menu superior: Home, Categories, Contact e Sign in
    Então todos os links devem funcionar
    E os textos devem estar corretos
    E o layout não deve ter quebras

    Exemplos:
      | ambiente                                |
      | Google Chrome, tela de computador       |
      | Microsoft Edge, tela de computador      |
      | Google Chrome, tela de celular (DevTools) |

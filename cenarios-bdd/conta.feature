# language: pt
Funcionalidade: Cadastro e login
  Como visitante da loja
  Quero criar uma conta e entrar nela com segurança
  Para fazer compras como cliente

  @CT-28
  Cenário: Cadastro com dados válidos
    Dado que estou na tela de cadastro
    Quando preencho todos os campos com dados válidos e a senha "Teste@2026"
    E clico em "Register"
    Então a conta deve ser criada
    E devo ser direcionado para a tela de login

  @CT-29
  Cenário: Senha fraca no cadastro
    Dado que estou na tela de cadastro
    Quando digito a senha "abc"
    Então devo ver os requisitos de senha, com os não cumpridos destacados
    E o indicador de força deve mostrar um nível baixo

  @CT-30
  Cenário: Cadastro com e-mail já existente
    Dado que estou na tela de cadastro
    Quando tento me cadastrar com o e-mail "customer@practicesoftwaretesting.com"
    Então devo ver a mensagem "Email is already in use."

  @CT-31 @CT-32
  Esquema do Cenário: Login com credenciais válidas e inválidas
    Dado que estou na tela de login
    Quando entro com o e-mail "customer@practicesoftwaretesting.com" e a senha "<senha>"
    Então <resultado>

    Exemplos:
      | senha        | resultado                                          |
      | welcome01    | devo ser direcionado para a área do cliente (/account) |
      | senhaErrada1 | devo ver a mensagem "Invalid email or password"    |

  @CT-33
  Cenário: Bloqueio da conta após 3 tentativas erradas
    Dado que tenho uma conta criada por mim no CT-28
    Quando erro a senha 3 vezes seguidas
    E tento entrar mais uma vez
    Então devo ver a mensagem de conta bloqueada por excesso de tentativas

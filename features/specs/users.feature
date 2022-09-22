#language: pt

@users
Funcionalidade: Gerenciamento de usuário

Cenário: Cadastrar usuário
    Dado que todos dados de usuário foram gerados
    Quando o usuário preencher todos campos do cadastro
    Então irá exibir a mensagem "Welcome to your account"
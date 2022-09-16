#language: pt

@users
Funcionalidade: Gerenciamento de usuário

Cenário: Cadastrar usuário
    Dado que todos dados de usuário foram gerados
    Quando o usuário acessar a página de cadastro
    E preencher todos campos
    Então irá exibir um alert de sucesso
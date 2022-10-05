#language: pt

@login
Funcionalidade: Login do usuário

Cenário: Efetuar login
    Dado que o usuário esteja na tela de login
    Quando preencher o e-mail com senha
    Então irá exibir a mensagem "Welcome to your account" 

Esquema do Cenário: Efetuar login com dados inválidos
    Dado que o usuário esteja na tela de login
    Quando preencher o e-mail e senha com os valores "<email>", "<password>"
    Então irá exibir a mensagem "<message>" 
    Exemplos:
    | email         | password | message               |
    | mail          | pass123  | Invalid email address.|
    | mail@mail.com |          | Password is required. |
    | mail@mail.com | pass123  | Authentication failed.|

Cenário: Fazer logout
    Dado que o usuário esteja na tela de login
    Quando preencher o e-mail com senha
    E deslogar da conta
    Então irá exibir a mensagem "Sign in" 
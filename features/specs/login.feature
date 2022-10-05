#language: pt

@login
Funcionalidade: Login do usuário

Cenário: Efetuar login
    Dado que o usuário esteja na tela de login
    Quando preencher o e-mail com senha
    Então irá exibir a mensagem "Welcome to your account" 
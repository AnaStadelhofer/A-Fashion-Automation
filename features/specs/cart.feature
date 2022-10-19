#language: pt

@cart @login @logout
Funcionalidade: Gerencimaneto do carrinho

Cenário: Adicionar vários itens no carrinho
    Dado que estou na página inical
    Quando usuário adicionar os 5 primeiros produtos
    Então ao acessar o carrinho deverá mostrar o produto

Cenário: Remover todos itens do carrinho
    Dado que estou na página inical
    Quando usuário adicionar os 5 primeiros produtos
    E remover todos itens do carrinho
    Então ao acessar o carrinho deverá estar vazio

Cenário: Adicionar item especifico no carrinho
    Dado que estou na página inical
    Quando usuário adicionar o item 'Faded Short Sleeve T-shirts'
    Então ao acessar o carrinho deverá mostrar o produto
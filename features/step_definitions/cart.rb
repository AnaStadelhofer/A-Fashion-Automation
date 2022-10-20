Dado('que estou na página inical') do
    visit CONFIG['url']
end

Quando('usuário adicionar os {int} primeiros produtos') do |quantity|
    @quantity = quantity
    for i in 1..quantity do
        find(:xpath, "(//a[@class='product-name'])[#{i}]", visible: true).click
        find('#add_to_cart').click
        find(:xpath, '//span[@title="Continue shopping"]', wait: 10).click
        find('.home').click
    end
end

Então('ao acessar o carrinho deverá mostrar o produto') do
    find(:xpath, '//div[@class="shopping_cart"]/a').click
    sleep (10)
    expect(page).to have_content("Your shopping cart contains: #{@quantity} Products")
end

Quando('remover todos itens do carrinho') do
    find(:xpath, '//div[@class="shopping_cart"]/a').click
    @trash = all('.icon-trash').count

    for i in 1..@trash do
        find(:xpath, "(//a[@class='cart_quantity_delete'])[#{i}]", wait: 10).click
    end

end

Então('ao acessar o carrinho deverá estar vazio') do
    sleep 10
    message = find(:xpath, '//div[@id="center_column"]/p')
    expect(message.text).to have_content('Your shopping cart is empty.')
end

Quando('usuário adicionar o item {string}') do |string|
  
end

Então('o carrinho deverá mostrar o {string}') do |string|
  
end
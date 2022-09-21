
Dado('que todos dados de usuário foram gerados') do

end

Quando('o usuário acessar a página de cadastro') do
  find('.header_user_info').click
  find('#email_create').set Faker::Internet.email 
  find('#SubmitCreate').click
  sleep 2
  scroll_to(find('h1[class="page-heading"]'), align: :top)
  find('#customer_firstname').set Faker::Name.first_name
  find('#customer_lastname').set Faker::Name.last_name
  find('#passwd').set VARIABLE['pass']
  find('#uniform-newsletter').set true
  find('#uniform-optin').set true

  scroll_to(find(:xpath, '(//div[@class="account_creation"])[2]'), align: :top)
  find("#firstname").set Faker::Name.first_name
  find("#lastname").set Faker::Name.last_name
  find("#address1").set Faker::Address.full_address
  find("#city").set Faker::Address.city
  find("#uniform-id_state")
  find("#uniform-id_country")
  find("#other").set Faker::Lorem.characters(number: 25)
  find("#phone").set Faker::PhoneNumber.cell_phone_with_country_code
  find("#phone_mobile").set Faker::PhoneNumber.cell_phone_in_e164
  find("#alias").set Faker::Address.full_address
  sleep 5
end

Quando('preencher todos campos') do

end

Então('irá exibir um alert de sucesso') do
  
end

Dado('que todos dados de usuário foram gerados') do

end

Quando('o usuário acessar a página de cadastro') do
  find('.header_user_info').click
  find('#email_create').set Faker::Internet.email 
  find('#SubmitCreate').click
  find('#customer_firstname').set Faker::Name.first_name
  find('#customer_lastname').set Faker::Name.last_name
  find('#passwd').set VARIABLE['pass']
  find('#uniform-newsletter').set(true)
  find('#optin').set(true)
  sleep 10
  
end

Quando('preencher todos campos') do

end

Então('irá exibir um alert de sucesso') do
  
end
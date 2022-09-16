
Dado('que todos dados de usuário foram gerados') do
  visit 'https://automacaocombatista.herokuapp.com/users/new'
end

Quando('o usuário acessar a página de cadastro') do
  sleep 10
end

Quando('preencher todos campos') do
  sleep 10
end

Então('irá exibir um alert de sucesso') do
  sleep 10
end
Dado('que o usuário esteja na tela de login') do
  find('.header_user_info').click
end

Quando('preencher o e-mail com senha') do
  @login.set_login VARIABLE['user'], VARIABLE['pass']
end
  
Quando('preencher o e-mail e senha com os valores {string}, {string}') do |mail, password|
  @login.set_login mail, password
end

Quando('deslogar da conta') do
  @login.logout_user
end
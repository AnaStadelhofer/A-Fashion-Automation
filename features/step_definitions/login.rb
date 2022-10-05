Dado('que o usuário esteja na tela de login') do
  find('.header_user_info').click
end

Quando('preencher o e-mail com senha') do
  find("#email").set VARIABLE['user']
  find('#passwd').set VARIABLE['pass']
  find('#SubmitLogin').click
end
  
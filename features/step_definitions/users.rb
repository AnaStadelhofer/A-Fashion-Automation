Dado('que todos dados de usuário foram gerados') do
  @firstname = Faker::Name.first_name
  @lastname = Faker::Name.last_name
  @email = Faker::Internet.email

  @address = Faker::Address.full_address
  @city = Faker::Address.city
  @other = Faker::Lorem.characters(number: 25)
  @phone = Faker::PhoneNumber.cell_phone_in_e164
  @phone_cell = Faker::PhoneNumber.cell_phone_with_country_code
  @zip_code = Faker::Address.zip_code(state_abbreviation: 'CO')
  
  @day = Faker::Number.between(from: 1, to: 30)
  @month = Faker::Number.between(from: 1, to: 12)
  @year = Faker::Number.between(from: 1900, to: 2022)
end

Quando('o usuário preencher todos campos do cadastro') do
  @users.registered_access @email
  @users.personal_info @firstname, @lastname, true, @day, @month, @year
  @users.address_info @firstname, @lastname, @address, @city, @other, @phone, @phone_cell, @zip_code
  find("#submitAccount").click
end

Então('irá exibir a mensagem {string}') do | message |
  expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.')
end
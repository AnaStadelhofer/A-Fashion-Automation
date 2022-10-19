Before do
    Capybara.reset_sessions!
    visit CONFIG['url']
    @users = UsersPage.new 
    @login = LoginPage.new
end

Before('@login')do
  @login.page_login
  @login.set_login VARIABLE['user'] , VARIABLE['pass']
end

After('@logout')do
  @login.logout_user
end
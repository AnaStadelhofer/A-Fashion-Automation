Before do
    Capybara.reset_sessions!
    visit CONFIG['url']
    @users = UsersPage.new 
end
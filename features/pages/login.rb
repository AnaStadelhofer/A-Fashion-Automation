class LoginPage < SitePrism::Page

    element :mail, '#email'
    element :password, "#passwd"
    element :login_btn, '#SubmitLogin'
    element :logout, '.logout'
    element :access_login, '.header_user_info'

    def set_login mail, password
        self.mail.set mail
        self.password.set password
        self.login_btn.click
    end

    def page_login 
        self.access_login.click
    end

    def logout_user
        self.logout.click
    end

end
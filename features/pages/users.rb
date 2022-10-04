class UsersPage < SitePrism::Page

    element :icon_user, '.header_user_info'
    element :email_user, '#email_create'
    element :create_btn, '#SubmitCreate'
    element :firstname_user, '#customer_firstname'
    element :lastname_user, '#customer_lastname'
    element :password, '#passwd'
    element :termos_one, '#uniform-newsletter'
    element :termos_two, '#uniform-optin'
    element :firstname, '#firstname'
    element :lastname, '#lastname'
    element :full_address, '#address1'
    element :city, '#city'
    element :phone, '#phone'
    element :phone_mobile, '#phone_mobile'
    element :zip_code, '#postcode'
    element :other_infos, '#other'

    def registered_access email
        self.icon_user.click
        self.email_user.set email
        self.create_btn.click
        sleep 2
    end

    def personal_info firstname, lastname, termos, day, month, year
        page.choose("Mrs.")
        self.firstname_user.set firstname
        self.lastname_user.set lastname
        self.password.set VARIABLE['pass']
        self.termos_one.set termos
        find(:xpath, "//select[@id='days']/option[@value='#{day}']").click
        find(:xpath, "//select[@id='months']/option[@value='#{month}']").click
        find(:xpath, "//select[@id='years']/option[@value='#{year}']").click
        self.termos_two.set termos
    end

    def address_info firstname, lastname, address, city, other, phone, phone_cell, zip_code
        self.firstname.set firstname
        self.lastname.set lastname
        self.full_address.set address
        self.city.set city
        self.other_infos.set other
        self.phone.set phone
        self.phone_mobile.set phone_cell
        find(:xpath, '//select[@id="id_state"]/option[contains(text(), "Alaska")]').click
        self.zip_code.set zip_code
    end

end
require_relative './basepage.rb'

class LoginForm < Page
  class << self
    def email_textbox
      return {
        id: 'co.filamentlabs.patientio:id/username_edittext'
      }
    end

    def password_textbox
      return {
        id: 'co.filamentlabs.patientio:id/password_edittext'
      }
    end

    def login_button
      return {
        id: 'co.filamentlabs.patientio:id/login_button'
      }
    end
  end

  def login_with_rememberme(email: , password:)
    fill_email_address(email)
    fill_password(password)
    click_login
  end

  private

  def fill_email_address(email)
    @driver.find_element({id: self.class.email_textbox}).send_keys(email)
  end

  def fill_password(password)
    @driver.find_element({id: self.class.password_textbox}).send_keys(password)
  end

  def click_login
    @driver.find_element({id: self.class.login_button}).click
  end
end

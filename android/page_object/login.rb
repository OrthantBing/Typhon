require_relative './basepage.rb'

class LoginPage < Page
  # Define the html ui mappings here.
  class << self
    def login_button
      return {
        id: 'co.filamentlabs.patientio:id/login_button',
        name: 'Login',
        xpath: '//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.TextView[1]'
      }.freeze
    end

    def create_account_button
      return {
        id: 'co.filamentlabs.patientio:id/create_account_tv',
        name: 'Create Account',
        xpath: '//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.TextView[2]'
      }.freeze
    end
  end

  # Define the pageobject interactions here.

  def click_login_button
    @driver.find_element({id: self.class.login_button[:id]}).click
  end

  def click_create_account_button
    @driver.find_element({id: self.class.create_account_button[:id]}).click
  end
end

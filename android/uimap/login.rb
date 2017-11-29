# This module contains the locators needed for Loin page
module Login
  def login_button
    login_button = {
      id: 'co.filamentlabs.patientio:id/login_button',
      name: 'Login'
    }
  end

  def create_account
    create_account_button = {
      id: 'co.filamentlabs.patientio:id/create_account_tv',
      name: 'Create Account'
    }
  end
end

require_relative './basepage.rb'

class TermOfService < Page
  class << self
    def iagree_button
      return {
        id: 'co.filamentlabs.patientio:id/agree_button',
        name: 'I Agree'
      }
    end

    def i_dont_agree_button
      return {
        id: 'co.filamentlabs.patientio:id/disagree_tv',
        name: 'I do not agree at this time.'
      }
    end
  end

  def click_i_agree_button
    @driver.find_element({id: self.class.iagree_button[:id]}).click
  end

  def click_i_disagree_button
    @driver.find_element({id: self.class.i_dont_agree_button[:id]}).click
  end
end

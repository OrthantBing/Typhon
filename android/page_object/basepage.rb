#find_element(:uiautomator, 'new UiSelector().className("android.widget.ImageButton").instance(0)').click
#[96] pry(main)> for i in 0..test.length-1
#[96] pry(main)*   puts i
#[96] pry(main)*   puts test[i].tag_name()
#[96] pry(main)* end  
#[74] pry(main)> test = find_elements(:uiautomator, 'new UiSelector()')
# First time the view changes
# next time after clicking the search box the view changes
# so we need to get the remaining view and get the spinner view and send keys to it.
# testing[30].send_keys("google")
# Buttons are similar,
# second button is the search box
# press_keycode("66") -> this is to send enter key 
#

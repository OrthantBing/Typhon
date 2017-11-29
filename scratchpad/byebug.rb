# Include the needed gems
require 'rubygems'  
require 'appium_lib'  
require 'byebug'

desired_caps = {
      caps:       {
        platformName:     'Android',
        deviceName: 'training',
        app:              '../../appium/apkfiles/PatientIO-PatientIO-distribution.apk',
        name:             'Patient IO',
        appActivity: 'co.filamentlabs.patientio.activity.LauncherActivity',
        appWaitActivity: 'co.filamentlabs.patientio.activity.WelcomeActivity'

      },
      appium_lib: {
        wait: 60
      }
    }


    Appium::Driver.new(desired_caps).start_driver

    Appium.promote_appium_methods Object

byebug

    find('Login').click

    scroll_to('I Agree')

    find('I Agree').click
   
    sleep 10
    
    driver_quit

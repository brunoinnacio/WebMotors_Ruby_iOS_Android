require 'rspec/expectations'

class HomePage
  include RSpec::Matchers

  def initialize
    get_screen_mappings 'home', 'core'
  end

  def tap_alert
    if ENV['PLATFORM_NAME'].downcase == 'ios'
      click @mappings["btn_tap_alert"]
    end
  end

  def tap_next_onbording
    if ENV['PLATFORM_NAME'].downcase == 'ios'
      click @mappings['btn_next_ios']
    else
      click @mappings['btn_next_android']
    end
  end

  def tap_entrar
    
    @mappings['btn_entrar_ios']
    @mappings['btn_entrar_android']
  end

  def refresh
    refresh_screen
  end
end
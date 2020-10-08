require 'rspec/expectations'

class HomePage
  include RSpec::Matchers

  def initialize
    get_screen_mappings 'home', 'core'
    
  end

  def tap_alert
    element_exists? @mappings['btn_tap_alert']
  end

  def tap_next_onbording
    element_exists? @mappings['btn_next_ios']["XPATH"], @mappings['btn_next_android']["ID"]
  end

  def tap_entrar
    click @mappings['btn_entrar_ios']
    click @mappings['btn_entrar_android']
    
  end

  def refresh
    refresh_screen
  end
end
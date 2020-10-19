require 'rspec/expectations'

class HomePageAndroid
  include RSpec::Matchers

  def initialize
    get_screen_mappings 'home', 'core'
  end

  def tap_next
    click @mappings['btn_next_android']
  end

  def tap_entrar
    @mappings['btn_entrar_android']
  end

  def refresh
    refresh_screen
  end
end
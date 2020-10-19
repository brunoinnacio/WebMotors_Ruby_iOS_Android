Given('estou na tela de onbording') do

  @home = HomePageIOS.new

  @home.tap_alert
  sleep 5

  2.times {@home.tap_next_onbording
  sleep 1} 
    
  @home.tap_entrar
  sleep 1
end



Given('estou na tela de onbording Android') do

  @home = HomePageAndroid.new

  2.times {@home.tap_next
  sleep 1} 
    
  @home.tap_entrar
  sleep 1
end



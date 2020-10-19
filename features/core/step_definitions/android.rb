Dado('Que estou logado') do
  @home = HomePageAndroid.new
  2.times {@home.tap_next
    sleep 1} 
    @home.tap_entrar
    sleep 1
end

Dado('clico no icone de indicacao e Indicar agora') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('Informar um CNPJ do Clientes') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('preencher todos os campos solicitados') do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao('devo finalizar') do
  pending # Write code here that turns the phrase above into concrete actions
end

  


    





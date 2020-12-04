
Dado('Que ao abrir o Aplicativo IOS') do
  $logger.info('Abriu o aplicativo IOS')
end

Dado('Visualizar a lista de carros IOS') do
  $logger.info('Visualizou a Home IOS')
end

Quando('Selecionar a Marca no IOS') do
  click_xpath("(//XCUIElementTypeStaticText[@name='Honda'])[1]")
  $logger.info('Selecionou a Marca IOS')
end

Quando('Validar o Modelo e Versao no IOS') do
  $driver.find_elements(:accessibility_id, "2017/2018")
  $driver.find_elements(:accessibility_id, "0 km")
  $driver.find_elements(:accessibility_id, "Azul")
  $driver.find_elements(:accessibility_id, "2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO")
  $logger.info('IOS - Validou todos os campos Versao Modelo Ano e Cor')
end

Entao('devo voltar para Home no IOS') do
  click_xpath("//XCUIElementTypeButton[@name='Veículos']")
  $logger.info('IOS - Voltou para Home')
end

#################Validando Lancer Branco#####################

Dado('clicar no Lancer Branco IOS') do
click_xpath("(//XCUIElementTypeStaticText[@name='Lancer'])[1]")
$logger.info('IOS - Clicou no modelo do carro')
end

Quando('Validar Modelo Versao Ano KM e COR IOS') do
  $driver.find_elements(:accessibility_id, "2012/2012")
  $driver.find_elements(:accessibility_id, "47500 km")
  $driver.find_elements(:accessibility_id, "Branco")
  $driver.find_elements(:accessibility_id, "2.0 EVO 4P AUTOMÁTICO")
  $logger.info('IOS - Validou todos os campos Versao Modelo Ano e Cor')
end

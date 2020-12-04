Dado('Que ao abrir o Aplicativo') do
  $logger.info('Abriu o aplicativo')
end

Dado('Visualizar a lista de carros') do
  wait_for_text_to_exist("Carros")
  $logger.info('Visualizou a Home')
end

Quando('Selecionar a Marca') do
  click_xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.TextView[2]")
  $logger.info('Selecionou a Marca')
end

Quando('Validar o Modelo e Versao') do
  #Validando a Modelo
  wait_for_text_to_exist("Honda City")

  #Validando a Versao
  wait_for_text_to_exist("2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO")

  #Validando Ano
wait_for_text_to_exist("2017/2018")

#Validando KM
wait_for_text_to_exist("0KM")

#Validando Cor
wait_for_text_to_exist("Azul")

$logger.info('Validou todos os campos Versao Modelo Ano e Cor')
end

Entao('devo voltar para Home') do
  click_xpath("//android.widget.ImageButton[@content-desc='Navegar para cima']")
  $logger.info('Voltou para Home')
end

###########################################################
#Validando Lancer Branco

Dado('clicar no Lancer Branco') do
click_xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.TextView[2]")
$logger.info('Clicou no modelo do carro')
end

Quando('Validar Modelo Versao Ano KM e COR') do
#Validando a Modelo

wait_for_text_to_exist("Mitsubishi Lancer")

#Validando a Versao
wait_for_text_to_exist("2.0 EVO 4P AUTOMÁTICO")

#Validando Ano
wait_for_text_to_exist("2012/2012")

#Validando KM
wait_for_text_to_exist("47500KM")

#Validando Cor
wait_for_text_to_exist("Branco")
$logger.info('Validou todos os campos Versao Modelo Ano e Cor')
end

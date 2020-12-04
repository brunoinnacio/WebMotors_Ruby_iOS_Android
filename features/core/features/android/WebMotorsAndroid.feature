#language: pt

Funcionalidade: Validar Veiculos Android
 
  @City_android
  Cenario: Validar Veiculo Honda City com sucesso

    Dado Que ao abrir o Aplicativo
    E Visualizar a lista de carros
    Quando Selecionar a Marca
    E Validar o Modelo e Versao
    Entao devo voltar para Home


 @Lancer_android
  Cenario: Validar Lancer Branco com sucesso
    Dado Que ao abrir o Aplicativo
    E clicar no Lancer Branco
    Quando Validar Modelo Versao Ano KM e COR
    Entao devo voltar para Home
   
#language: pt

Funcionalidade: Validar Veiculos IOS
 
  @City_iOS
  Cenario: Validar Veiculo Honda City com sucesso IOS

    Dado Que ao abrir o Aplicativo IOS
    E Visualizar a lista de carros IOS
    Quando Selecionar a Marca no IOS
    E Validar o Modelo e Versao no IOS
    Entao devo voltar para Home no IOS


 @Lancer_iOS
  Cenario: Validar Lancer Branco com sucesso IOS
    Dado Que ao abrir o Aplicativo IOS
    E clicar no Lancer Branco IOS
    Quando Validar Modelo Versao Ano KM e COR IOS
    Entao devo voltar para Home no IOS


Cucumber Cross testing core
================================

Este projeto foi criado com a finalidade de criar um framework que realiza testes para IOS e ANDROID utilizando somente a busca pelos elementos separadamente.

##**Tecnologias utilizadas**
 
 - **Ruby** : É uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita. *Ver mais: [ruby](https://www.ruby-lang.org/pt/)*
 - **Cucumber**: É uma ferramenta open source criada para testar outros softwares. Ela executa testes de aceitação utilizando a escrita BDD. *Ver mais: [Cucumber](cucumber.io)*
 - **Appium**: É uma ferramenta open source utilizada para execução de testes automatizados em aplicações nativas, híbridas ou web aplicativos. *Ver mais: [Appium](http://appium.io/)*

**Requisitos para execução**:

 - Mac (Android e IOS) ou Windows (Somente Android) 
  - com a variável de ambiente $ANDROID_HOME configurada em seu SDK android
 - Java 1.8 >=
 - Android SDK
 - Ant Version 1.8 >
 - Adb
 - Ruby 2.23 >=
 - com bundler gem (gem install bundler)
 - Appium (http://appium.io/)
 - Android Device 4.1 >=

##**Passos para execução:**

 - Conectar seu Android ou IOS previamente configurado no Appium
 - Levantar sua aplicação Appium
 - Instalar manualmente a `gem install allure-cucumber`
 -  Executar: `bundle install`
 - Para executar a suite de teste: `rake run_acceptance[platform,@tag_test]` - sendo platform = android/ios e @tag_test = as tags definidas na feature do cucumber



**Organizacao das Pastas**
================================
- apps (os artefatos que serão utilizados os testes, apk ou ipa)
- config
  - android
    - appium.txt (Caps do ambiente)
  - ios
    - appium.txt (Caps do ambiente)
- ##**features**
    - core (Lógica principal do teste)
         **mappings**
             - sign_up_mappings.yaml (chave e valores dos xpaths dos APPs)
             - sign_in_mappings.yaml (chave e valores dos xpaths dos APPs)
             - recommendation_mappings.yaml (chave e valores dos xpaths dos APPs)
             - home_mappings.yaml (chave e valores dos xpaths dos APPs)
         - step_definitions (BDD)
             - sign_up.feature (BDD do sign_up)
             - sign_in.feature
             - recommendation.feature
             - home_mappings.feature
         - page_objects
             - base_page.rb (Todos objects reutilizados dentro de mais de uma tela)
             - sign_up_page.rb (Objects específico da tela sign_up)
             - sign_in_base_page.rb
             - recommendation_page.rb
         - steps ( end two end)
             - sign_up.feature (Executar o BDD que foi definido nos step step_definitions utilizando os page_objects)
             - sign_in.feature
             - recommendation.feature
             - home_mappings.feature
     - support (Todos os métodos auxiliares para executar os testes)
         - appium_custom.rb (métodos que auxilia a interações na tela eg, click, preencher input)
         - env.rb (configuração do ambiente que irá sera executado nos testes)
         - hooks.rb (Before/After quer usamos para chamar o driver atual)
         - screen_mappings_implements.rb (Mapeia os pontos do YAML que contém os xpaths para serem usados no testes)
Gemfile (Depêndencias do projeto)
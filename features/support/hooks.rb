#Gancho para executar antes de cada cenário de teste
Before do
  #faz o start do appium
  driver.start_driver
  
  # configuração para aguardar até 10 segundos a exibição de um elemento na tela
  driver.manage.timeouts.implicit_wait = 10

  #guardando a instancia da classe navigator na variável 
  @nav = Navigator.new

  #guardando a instancia da classe login na variável 
  @login = LoginScreen.new

  #guardando a instancia da classe Toaster na variável 
  @toaster = Toaster.new

  #Evento para toda vez que iniciar o app vai clicar em começar e vai para home
  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click
end

#depois de cada execução de cenário o after é executado para anexar screen e informações nos relatórios
After do |scenario|
  #tira o screenshot pelo appium e salva na variável binary_shot no formato base 64
  binary_shot = driver.screenshot_as(:base64)

  #cria o arquivo png na pasta destinada
  temp_shot = "logs/temp_shot.png"

  #converte o arquivo binary para o temporário em PNG
  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  #usa esse método do Allure para anexar o temp_shot no relatório
  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )

  #finaliza o cenário encerrando o cucumber...
  driver.quit_driver
end

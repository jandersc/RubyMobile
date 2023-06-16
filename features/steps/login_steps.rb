Dado('que acesso a tela de Login') do
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
  end
  
  Quando('submeto minhas credenciais:') do |table|
    #criando uma variável para ler a table onde pega chave(1ª coluna) e valor(2ª coluna)
    user = table.rows_hash
    #para mostrar no terminal os dados do user (utilizando log no lugar do puts)
    log(user)
    @login.sign_in(user[:email], user[:senha])
  end
  
  Então('devo ver a notificação: {string}') do |notice|
    #log(get_source) #pega o código xml da tela, utilizado para capturar toast
    
    #faz uma comparação do texto do toast com o passado na feature
    expect(@toaster.toast.text).to eql notice
  end
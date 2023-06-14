Dado('que acesso a tela de Login') do
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
  end
  
  Quando('submeto minhas credenciais:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('devo ver a notificação: {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
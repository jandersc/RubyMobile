Dado('que acesso a tela Click Simples') do                                    
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end                                                                           
                                                                                
Quando('faço um click simples') do                                            
    find_element(id: "io.qaninja.android.twp:id/short_click").click
end                                                                           
                                                                                
Então('devo ver o texto: {string}') do |expect_text|                               
    #faz uma comparação do texto do toast com o passado na feature
    expect(@toaster.toast.text).to eql expect_text
end                                                                           

Dado('que acesso a tela Click Longo') do
     #chama o método que já está implementado no components.rb
     @nav.tap_hamburguer
     #chama o método e passa a opção como parâmetro
     @nav.tap_by_text("BOTÕES")
     @nav.tap_by_text("CLIQUE LONGO")
end
    
Quando('faço um click longoo') do
    @button = find_element(id: "io.qaninja.android.twp:id/long_click")
    Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
end
    
Então('devo ver o botão com o texto: {string}') do |expect_text|
    expect(@button.text).to eql expect_text
end
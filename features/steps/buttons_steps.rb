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
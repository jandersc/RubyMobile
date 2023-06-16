Dado('que acesso a tela Avengers') do                                        
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end                                                                          
                                                                               
Quando('apago o Capitão Améica') do                                          
    #checkpoint para aguardar até a lista aparecer na tela
    find_element(id: "io.qaninja.android.twp:id/rvList")

    #coordenadas para o swipe, os valores são porcentagens da tela (ex.: star_x tem 93% da horizontal da tela)
    coord = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
    
    #comando para fazer o swipe utilizando o TouchAction
    Appium::TouchAction.new.swipe(coord).perform

    # após o swipe o botão de deletar fica vísivel, sendo possível excluir
    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end                                                                          
                                                                               
Então('devo ver a seguinte mensagem: {string}') do |expect_message|                  
    msg_delete = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    expect(msg_delete.text).to eql expect_message
end                                                                          
                                                                               
Dado('que acesso a tela Botões de Radio') do
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
end
  
Quando('eu escolho a opção Ruby') do
    #localizador com click para marcar o radio button
    @radio_locator = "//android.widget.RadioButton[contains (@text, 'Ruby')]"
    find_element(xpath: @radio_locator).click
end
  
Então('esta opção deve ser marcada') do
    #por causa da mudança de estado é necessário fazer um novo find para validar o checked
    @radio_result = find_element(xpath: @radio_locator)
    #o appium retorna o true como string do checked por isso é necessário o uso do eql
    expect(@radio_result.checked).to eql "true"
end
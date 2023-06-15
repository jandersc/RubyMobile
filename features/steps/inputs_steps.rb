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

Dado ("que acesso a tela Checkbox") do
    #chama o método que já está implementado no components.rb
    @nav.tap_hamburguer
    #chama o método e passa a opção como parâmetro
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
end

Quando ("eu marco a opção Ruby") do
    #localizador com click para marcar o checkbox
    @check_locator = "//android.widget.CheckBox[contains (@text, 'Ruby')]"
    find_element(xpath: @check_locator).click
end

Então ("esta opção deve estar marcada") do
    #por causa da mudança de estado é necessário fazer um novo find para validar o checked
    @check_result = find_element(xpath: @check_locator)
    #o appium retorna o true como string do checked por isso é necessário o uso do eql
    expect(@check_result.checked).to eql "true"
end
                                                                            
Quando('eu marco as seguintes techs:') do |table|                              
    #recebe a tabela da feature e converte em hashe
    @techs = table.hashes
    
    #faz a leitura de cada item do hash e atribui a variável item
    @techs.each do |item|
        #Altera o @text do xpath com cada elemento da table
        check_locator = "//android.widget.CheckBox[contains (@text, '#{item["tech"]}')]"
        find_element(xpath: check_locator).click
    end
end                                                                            
                                                                                 
Então('todas essas opções devem estar marcadas') do                            
    @techs.each do |item|
        check_locator = "//android.widget.CheckBox[contains (@text, '#{item["tech"]}')]"
        check_result = find_element(xpath: check_locator)
        #o appium retorna o true como string do checked por isso é necessário o uso do eql
        expect(check_result.checked).to eql "true" 
    end
end                                                                            
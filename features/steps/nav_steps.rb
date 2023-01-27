Quando('acesso o Menu') do
    #colocando o elemento do menu (hamburguer) dentro da variável
    hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
    #realizando um find e click no elemento
    find_element(xpath: hamburguer).click
end
  
Então('vejo a lista de opções de navegação') do
    #colocando o elemento dentro da variável
    menu = find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    #validando se o elemento do menu está sendo exibido
    expect(menu.displayed?).to be true
end
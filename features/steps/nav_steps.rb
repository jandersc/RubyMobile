Quando('acesso o Menu') do
    #chama o metódo da classe components
    @nav.tap_hamburguer
end
  
Então('vejo a lista de opções de navegação') do
    #validando se o elemento do menu está sendo exibido
    expect(@nav.list.displayed?).to be true
end
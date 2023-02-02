class Navigator
    def tap_hamburguer
        #colocando o elemento do menu (hamburguer) dentro da variável
        hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
        #realizando um find e click no elemento
        find_element(xpath: hamburguer).click
    end

    def list
        #retorna o elemento
        return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
    end
end
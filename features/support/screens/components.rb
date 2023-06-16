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

    def tap_by_text(target)
        #realizando um find e click no elemento, usando o #{} para customizar a variável com o valor passado no login steps
       find_element(xpath: "//*[@text='#{target}']").click 
    end
end

class Toaster
    #método para retornar o valor do toast
    def toast
        return find_element(xpath: "//android.widget.Toast")
    end
end
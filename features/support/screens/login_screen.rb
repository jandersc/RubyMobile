# Tem o nome LoginScreen pq é vinvulada a uma tela, diferente do Navigator que é um componente
class LoginScreen

    #método para fazer login
    def sign_in(email, password)
        #seletor do campo e-mail com o sendkeys
        find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
        #seletor do campo senha com o sendkeys
        find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(password)
        #seletor do campo ENTRAR utilizando o click
        find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
    end

end
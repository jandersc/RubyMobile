#language: pt

Funcionalidade: Avengers

    @short
    Cenário: Remover o Capitão América
        Dado que acesso a tela Avengers
        Quando apago o Capitão Améica
        Então devo ver a seguinte mensagem: "Item removido! (posição = 0)"
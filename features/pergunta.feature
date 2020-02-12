#language: pt

Funcionalidade: Pergunta
    Usuário decide cancelar sua conta
    Não sabe onde fazê-lo
    Busca tal informação na sessão Perguntas

Cenario: Cancelamento
    Dado que o usuário quer cancelar sua conta no site
    Quando o usuário vai até a seção Perguntas
    E busca pela seção Cancelamento
    Então acessa a opção “Quero cancelar minha conta. Como faço?”
    E vejo a resposta na tela.
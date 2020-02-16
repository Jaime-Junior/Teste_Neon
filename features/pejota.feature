#language: pt

Funcionalidade: Conta_Pejota
    Usuário deseja abrir conta Pessoa Jurídica
    Deve verificar quais os documentos de identidade aceitos

Cenario: Pejota
    Dado que o usuário vai abrir conta PJ
    Quando acessa página referente à sua categoria
    Então verifica quais os documentos de identidades aceitos

Cenario: Login Pejota
    Dado que o usuário entra na página Pejota
    Quando ele realiza login com email inválido
    Então recebe mensagem de erro
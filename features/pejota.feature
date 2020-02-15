#language: pt

Funcionalidade: Conta_Pejota
    Usuário deseja abrir conta Pessoa Jurídica
    Deve verificar quais os documentos de identidade aceitos

Cenario: Verificação de documentos aceitos na conta Pejota
    Dado que o usuário vai abrir conta PJ
    Quando acessa página referente à sua categoria
    Então verifica quais os documentos de identidades aceitos
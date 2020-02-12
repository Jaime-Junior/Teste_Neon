Dado("que o usuário quer cancelar sua conta no site") do
  @cancelamento.main
end

Quando("o usuário vai até a seção Perguntas") do
  @cancelamento.secao
end

Quando("busca pela seção Cancelamento") do
  @cancelamento.busca
  sleep 5
end

Então("acessa a opção “Quero cancelar minha conta. Como faço?”") do
  @cancelamento.pergunta
end

Então("vejo a resposta na tela.") do
  expect(page).to have_text "Para cancelar sua conta basta logar no app, clicar em:"
end

Dado("que o usuário vai abrir conta PJ") do
  @cancelamento.main
  @pejota.secaopj
end

Quando("acessa página referente à sua categoria") do
  @pejota.contapj
end

Então("verifica quais os documentos de identidades aceitos") do
  @pejota.listadoc
  expect(@pejota.nomedocs.text).to include("RG", "CNH", "RNE")
  puts @pejota.nomedocs.text
end

Dado("que o usuário entra na página Pejota") do
  @cancelamento.main
  @pejota.secaopj
  @pejota.acessapj
end

Quando("ele realiza login com email inválido") do
  switch_to_window(windows.last)
  @pejota.emailpj.set "teste@neon.com.br"
  click_button "Entrar"
end

Então("recebe mensagem de erro") do
  expect(find(".no-bullet")).to have_text "Login inválido."
end

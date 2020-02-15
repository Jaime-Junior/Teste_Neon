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

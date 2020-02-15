Quando("eu faço cadastro com {string} e {string} e {string} e {string} e {string}") do |nome, cpf, email, celular, nascimento|
  @cadastro.entrar
  @cadastro.cadastrar(nome, cpf, email, celular, nascimento)
  sleep 3
end

Quando("devo ver a mensagem de alerta {string}") do |mensagem|
  expect(page).to have_text mensagem
end

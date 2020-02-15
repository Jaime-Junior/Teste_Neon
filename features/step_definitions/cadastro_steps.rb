Dado("que acesso o site do banco Neon") do
  @cadastro.entrar
end

Quando("eu faço cadastro com {string} e {string} e {string} e {string} e {string}") do |nome, cpf, email, celular, nascimento|
  @cadastro.cadastrar(nome, cpf, email, celular, nascimento)
end

Quando("devo ver a mensagem de alerta {string}") do |mensagem|
  expect(find("mat-error").click).to have_text mensagem
end

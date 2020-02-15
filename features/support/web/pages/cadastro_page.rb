class CadastroPage
  include Capybara::DSL

  def entrar #Método abre a página de cadastro
    visit "/"
    first(:link, "Abra sua conta").click
  end

  def cadastrar(nome, cpf, email, celular, nascimento) #Método preenche os dados para cadastro com um dado faltante por vez e clica em enviar
    find("input[formcontrolname=name]").set nome
    find("input[formcontrolname=document]").set cpf
    find("input[formcontrolname=email]").set email
    find("input[formcontrolname=phone]").set celular
    find("input[formcontrolname=birthdate]").set nascimento
    find(".mat-checkbox-inner-container").click
    click_button "enviar"
  end
end

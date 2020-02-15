class CadastroPage
  include Capybara::DSL

  def entrar
    visit "/"
    #click_link "Abra sua conta"
    first(:link, "Abra sua conta").click
  end

  def cadastrar(nome, cpf, email, celular, nascimento)
    find("input[formcontrolname=name]").set nome
    find("input[formcontrolname=document]").set cpf
    find("input[formcontrolname=email]").set email
    find("input[formcontrolname=phone]").set celular
    find("input[formcontrolname=birthdate]").set nascimento
    find(".mat-checkbox-inner-container").click
    click_button "enviar"
  end
end

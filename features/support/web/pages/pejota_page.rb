class AbrePejota
  include Capybara::DSL

  def secaopj #Método entra na página referente a PJ
    click_link "Pejota"
  end

  def contapj #Método clica na opção para abrir neon PJ
    click_link "ABRA SUA NEON PEJOTA"
  end

  def listadoc #Método clica no botão conferir a lista
    switch_to_window(windows.last)
    click_button "Conferir a lista"
    click_link "Documento de identidade com foto de todos os sócios"
  end

  def nomedocs #Método exibe os documentos aceitos
    find("#signup-documents-panel-content-2")
  end

  def acessapj #Método acessa página de login para Pejotas
    click_link "Acessar conta"
  end

  def emailpj
    find("input[id=login-form-email]") #Método clica no campo email na pagina de login Pejota
  end
end

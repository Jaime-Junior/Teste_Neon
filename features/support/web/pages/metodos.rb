class CancelaCartao
  include Capybara::DSL

  def main #Método acessa a página inicial do Banco
    visit "/"
  end

  def secao #Método clica no botão Perguntas
    click_link "Perguntas"
  end

  def busca #Método clica no elemento Cancelamento, exibindo as opções disponíveis
    find(:xpath, "/html/body/app-root/app-header/div/div/app-pessoa-fisica/main/div[3]/app-questions/section[1]/div/div[2]/div[2]/div/div[7]/ul/li[3]/a").click
  end

  def pergunta #Método clica na pergunta desejada
    click_link "Quero cancelar minha conta. Como faço?"
  end
end

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
end

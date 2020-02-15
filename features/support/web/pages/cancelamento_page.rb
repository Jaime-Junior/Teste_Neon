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

  def pergunta #Método clica na pergunta desejada e exibe o texto no terminal
    click_link "Quero cancelar minha conta. Como faço?"
    descricao = find(".question-article__content")
    puts descricao.text
  end
end

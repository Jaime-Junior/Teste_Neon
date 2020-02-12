class CancelaCartao
  include Capybara::DSL

  def main
    visit "/"
  end

  def secao
    click_link "Perguntas"
  end

  def busca
    find(:xpath, "/html/body/app-root/app-header/div/div/app-pessoa-fisica/main/div[3]/app-questions/section[1]/div/div[2]/div[2]/div/div[7]/ul/li[3]/a").click
    #                         //*[@id="content-wrapper"]/app-pessoa-fisica/main/div[3]/app-questions/section[1]/div/div[2]/div[2]/div/div[7]/ul/li[3]/a
  end

  def pergunta
    click_link "Quero cancelar minha conta. Como faço?"
  end
end

Before do
  page.current_window.resize_to(1440, 900)
  @cancelamento = CancelaCartao.new
  @pejota = AbrePejota.new
  @cadastro = CadastroPage.new
end

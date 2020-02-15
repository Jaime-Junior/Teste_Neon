Before do
  page.current_window.resize_to(1440, 900)
  @cancelamento = CancelaCartao.new
  @pejota = AbrePejota.new
  @cadastro = CadastroPage.new
end

After do |scenario|
  Dir.mkdir("prints") unless Dir.exist?("prints")

  sufix = ("error" if scenario.failed?) || "success"
  name = scenario.name.tr(" ", "_").downcase.gsub!(/[,()#]/, "")

  page.save_screenshot("prints/#{sufix}-#{name}.png")
  embed("prints/#{sufix}-#{name}.png", "image/png", "Screenshot")
end

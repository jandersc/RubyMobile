#depois do cucumber 4 é recomendado usar o allure
require "allure-cucumber"

#utilizado para chamar os métodos do appium
require "appium_lib"

#usado para o método de limpar screnshort e logs...
require "fileutils"

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

#utilizado para os capabities em txt, se não usar txt não tem necessidade...
caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
#método para ter acesso a todos os métodos do Appium, com isso não é necessário chamar o driver dentro das classes
Appium.promote_appium_methods Object

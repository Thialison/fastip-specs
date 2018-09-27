Before do |scenario|
  caps = Appium.load_appium_txt file: File.expand_path("fastip.txt", "features/caps"), verbose: true
  Appium::Driver.new(caps,true)
  Appium.promote_appium_methods Object

  $driver.start_driver
end


After do |scenario|
  time = Time.new
	Dir.mkdir('report') unless Dir.exist?('report')

	result = ('fail' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	screenshot("report/#{result}_#{time.day}-#{time.month}-#{time.year}_#{name}.png")
  $driver.driver_quit
  embed("report/#{result}_#{time.day}-#{time.month}-#{time.year}_#{name}.png", 'image/png')
end

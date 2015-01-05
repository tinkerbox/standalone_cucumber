require 'capybara'
require 'capybara/cucumber'
require 'faker'


#####################
# running the test in Chrome browser
# Capybara.register_driver :selenium do |app|
# # optional
#   client = Selenium::WebDriver::Remote::Http::Default.new
# # optional
#   client.timeout = 120
#   Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
# end
#
# Capybara.javascript_driver = :chrome

#####################################
#
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
# end


Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'https://github.com/join'
end
World(Capybara)




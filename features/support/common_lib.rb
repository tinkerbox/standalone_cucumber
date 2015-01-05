require 'rubygems'
require 'selenium-webdriver'
require 'acceptance_test'
require 'acceptance_test/gherkin_ext'
require 'csv'

module Common_functions

  def wait_for_element how, objObject, timeOut=$timeout

    begin
      wait_for_it = Selenium::WebDriver::Wait.new(:timeout => timeOut)
      case how
        when "content"
          wait_for_it.until { page.driver.browser.find_element(:xpath, "//*[contains(text(),'#{objObject}')]").displayed?}
          strDetails = "Content " + objObject + " found"
          puts strDetails
        else
          wait_for_it.until { page.driver.browser.find_element(how, objObject).displayed?}
          strDetails = "Object " + objObject + " found"
          puts strDetails
      end
      sleep 5
    rescue Exception => e
      puts e
    end
  end

end

data_reader = lambda do |source_path|
  CSV.read(File.expand_path(source_path))
end

GherkinExt.enable_external_source data_reader



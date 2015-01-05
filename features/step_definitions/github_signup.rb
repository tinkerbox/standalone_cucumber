
Given(/^I'm on "(.*?)" page$/) do |page_to|
  visit page_to
end


When(/^I type "(.*?)" in the "(.*?)" input field$/) do |value, field|
  # wait_for_element :xpath,field   # wait for element display on page
  #find(:xpath,field).set  "#{Faker::Name.first_name}#{Time.now.to_i}"
  find(:xpath,field).set value
  find(:xpath,field).native.send_keys(:tab)
end

When(/^I type "(.*?)" in the "(.*?)" email field$/) do |value, field|
  #wait_for_element :xpath,field   # wait for element display on page
  find(:xpath,field).set value
  find(:xpath,field).native.send_keys(:tab)
end

When(/^I type "(.*?)" in the "(.*?)" password field$/) do |value, field|
  #wait_for_element :xpath,field   # wait for element display on page
  find(:xpath,field).set value
  find(:xpath,field).native.send_keys(:tab)
end
When(/^I type "(.*?)" in the "(.*?)" confirm field$/) do |value, field|
  #wait_for_element :xpath,field   # wait for element display on page
  find(:xpath,field).set value
  find(:xpath,field).native.send_keys(:tab)
end
When (/^I will click on "(.*?)" button$/) do |value|
  find(:button,value).click
end





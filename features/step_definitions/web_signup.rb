Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.com'
end

Then(/^I will search for "(.*?)"$/) do |searchText|
  fill_in 'gbqfq', with: searchText
end

Then(/^I will click the about link$/) do
  click_link('About')
end
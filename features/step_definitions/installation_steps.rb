Given /^I visit the site$/ do
  visit('/')
end

Then /^I should see "([^"]*)"$/ do |text|
   last_response.body.should match(/#{text}/m)
end

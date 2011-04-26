Given /^I visit the site$/ do
  visit('/')
end

Then /^I should see "([^"]*)"$/ do |text|
   last_response.body.should match(/#{text}/m)
end

When /^I set "([^"]*)" to "([^"]*)"$/ do |input_field, input_value|
  fill_in input_field, :with => input_value
end

When /^I press 'Next Step'$/ do
  pending
end

When /^I press 'To the Admin!'$/ do
  pending
end


### Crazy steps... ###

Given /^I use rvm$/ do
  pending
end

Given /^I clone the SinatraCMS repo$/ do
  pending
end

Given /^I run bundle install$/ do
  pending
end

Given /^I have Pow installed, Powder installed, and I run 'powder add sinatra\-cms\.dev'$/ do
  pending
end

When /^I visit 'sinatra\-cms\.dev'$/ do
  pending
end

Then /^I should get a success$/ do
  pending
end

When /^I fill in and submit this basic User Registration Form$/ do
  pending
end

When /^I press 'To the Admin\.\.\.'$/ do
  pending
end

Then /^the Site with domain "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  pending
end


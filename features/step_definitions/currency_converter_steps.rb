Then(/^I enter "(\d+)" as amount I want to exchange$/) do |amount|
  currency_converter_screen.enter_amount(amount)
  hide_keyboard
end

Then(/^I click currency to exchange from$/) do
  currency_converter_screen.click_from_currency
end

And(/^I click on letter "([^"]*)"$/) do |letter|
  currency_converter_screen.click_letter(letter)
end

Then(/^I click on currency "([^"]*)"$/) do |currency|
  currency_converter_screen.click_currency(currency)
end

Then(/^I click currency to exchange to$/) do
  currency_converter_screen.click_to_currency
end

Then(/^I click Convert button$/) do
  currency_converter_screen.click_convert_button
end

And(/^I verify "([^"]*)" is displayed$/) do |text|
  expect(currency_converter_screen.currency_result.text).to eq(text)
end
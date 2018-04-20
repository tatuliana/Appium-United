Given(/^I land on the home screen and verify Home link is displayed$/) do
  home_screen.home_screen_loaded
end

When(/^I click on "([^"]*)" in Horizontal Scroll View$/) do |link_name|
  home_screen.click_hor_scroll_view(link_name)
end

Then(/^I verify that card title text is equal to "([^"]*)"$/) do |text|
  expect(home_screen.card_view_title.text).to eq(text)
end

When(/^I click on Welcome to United section$/) do
  home_screen.click_welcome_to_united
end

Then(/^I click Sign in button$/) do
  home_screen.click_sign_in_button
end

And(/^the error message "([^"]*)" should be displayed$/) do |error_mess|
  expect(home_screen.error_message(error_mess).displayed?).to be == true
end

When(/^I click on Enterntainment section$/) do
  home_screen.click_enterntainment
end

Then(/^"([^"]*)" should be displayed$/) do |header_text|
  expect(home_screen.enterntainment_header.text).to eq(header_text)
end

When(/^I click on Check in$/) do
  home_screen.click_check_in
end

Then(/^I click Continue button$/) do
  hide_keyboard
  home_screen.click_check_in_continue
end

When(/^I swipe screen to the "([^"]*)" direction$/) do |direction|
  screen_actions.swipe_to_direction(direction)
end

And(/^I click on menu item "([^"]*)"$/) do |item|
  home_screen.click_menu_item(item)
end

Then(/^I enter "(\d+)" as amount I want to exchange$/) do |amount|
  home_screen.enter_amount(amount)
  hide_keyboard
end

Then(/^I click currency to exchange from$/) do
  home_screen.click_from_currency
end

And(/^I click on letter "([^"]*)"$/) do |letter|
  home_screen.click_letter(letter)
end

Then(/^I click on currency "([^"]*)"$/) do |currency|
  home_screen.click_currency(currency)
end

Then(/^I click currency to exchange to$/) do
  home_screen.click_to_currency
end

Then(/^I click Convert button$/) do
  home_screen.click_convert_button
end

And(/^I verify "([^"]*)" is displayed$/) do |text|
  expect(home_screen.currency_result.text).to eq(text)
end

When(/^I click on wallet button$/) do
  home_screen.click_wallet_button
end

Then(/^I click on Add a flight alert$/) do
  home_screen.click_add_flight_alert
end

And(/^I enter flight number "([^"]*)"$/) do |flight_number|
  home_screen.enter_flight_number(flight_number)
  hide_keyboard
end

Then(/^I click on Departure airport$/) do
  home_screen.click_departure_airport
end

And(/^I enter "([^"]*)" as a departure airport$/) do |airport|
  home_screen.enter_departure_airport(airport)
end

Then(/^I click on airport search result$/) do
  home_screen.click_airport_search_result
end

And(/^I click on date$/) do
  home_screen.click_date_field
end

Then(/^I click on the latest possible date$/) do
  home_screen.click_latest_date
end

Then(/^I click Search button to find flight$/) do
  home_screen.click_search_button
end


And(/^I verify search results include flight number "([^"]*)" and departure airport "([^"]*)"$/) do |flight_result, departure_result|
  expect(home_screen.flight_result.text).to include(flight_result)
  expect(home_screen.departure_result.text).to include(departure_result)
end
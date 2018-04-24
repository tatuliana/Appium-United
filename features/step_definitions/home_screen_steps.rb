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

When(/^I click on Entertainment section$/) do
  home_screen.click_entertainment
end

Then(/^"([^"]*)" should be displayed$/) do |header_text|
  expect(home_screen.entertainment_header.text).to eq(header_text)
end

When(/^I click on Check in$/) do
  home_screen.click_check_in
end

And(/^I click on menu item "([^"]*)"$/) do |item|
  home_screen.click_menu_item(item)
end

When(/^I click on wallet button$/) do
  home_screen.click_wallet_button
end

Then(/^I click on Add a flight alert$/) do
  home_screen.click_add_flight_alert
end

And(/^I look for menu item "([^"]*)", swipe to find it if necessary and then click$/) do |item|
  home_screen.find_click_menu_item(item)
end

When(/^I click Flight status button$/) do
  home_screen.click_flight_status
end

When(/^I click Book a flight button$/) do
  home_screen.click_book_flight_button
end
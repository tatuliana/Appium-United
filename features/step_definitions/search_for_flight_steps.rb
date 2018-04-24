And(/^I enter flight number "([^"]*)"$/) do |flight_number|
  search_for_flight_screen.enter_flight_number(flight_number)
  hide_keyboard
end

Then(/^I click on Select departure airport$/) do
  search_for_flight_screen.click_departure_airport
end

And(/^I click on date$/) do
  search_for_flight_screen.click_date_field
end

Then(/^I click on the latest possible date$/) do
  search_for_flight_screen.click_latest_date
end

Then(/^I click Search button to find flight$/) do
  search_for_flight_screen.click_search_button
end

Then(/^I click on tab "([^"]*)"$/) do |tab_name|
  search_for_flight_screen.click_on_tab(tab_name)
end

Then(/^I click on Select arrival airport$/) do
  search_for_flight_screen.click_arrival_airport
end
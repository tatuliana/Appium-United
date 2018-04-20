When(/^I click Flight status button$/) do
  home_screen.click_flight_status
end

Then(/^I click on widget "([^"]*)"$/) do |widget_name|
  flight_status_screen.click_on_widget(widget_name)
end

When(/^I type "([^"]*)" in Select departure airport field$/) do |airport|
  flight_status_screen.click_departure_airport_button
  flight_status_screen.type_departure_airport(airport)
end

And(/^click on flight search result$/) do
  flight_status_screen.click_airport_search_result
end

Then(/^I type "([^"]*)" in Select arrival airport field$/) do |airport|
  flight_status_screen.click_arrival_airport_button
  flight_status_screen.type_arrival_airport(airport)
end

Then(/^I click Search button$/) do
  flight_status_screen.click_search_button
end

When(/^I click on first result$/) do
  flight_status_screen.click_first_flight
end

Then(/^I verify that my search result shows flight from "([^"]*)"$/) do |search_result|
  expect(flight_status_screen.flight_search_result.text).to eq (search_result)
end

And(/^I type "([^"]*)" flight number$/) do |flight_number|
  flight_status_screen.type_flight_number(flight_number)
end


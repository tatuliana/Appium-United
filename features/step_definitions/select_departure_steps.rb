And(/^I enter "([^"]*)" as a departure airport$/) do |airport|
  select_departure_screen.enter_departure_airport(airport)
end

Then(/^I click on departure airport search result$/) do
  select_departure_screen.click_airport_search_result
end
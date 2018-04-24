And(/^I enter "([^"]*)" as an arrival airport$/) do |airport|
  select_arrival_screen.enter_arrival_airport(airport)
end

Then(/^I click on arrival airport search result$/) do
  select_arrival_screen.click_airport_search_result
end
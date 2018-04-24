And(/^I verify search results include flight number "([^"]*)" and departure airport "([^"]*)"$/) do |flight_result, departure_result|
  expect(flight_status_screen.flight_result.text).to include(flight_result)
  expect(flight_status_screen.departure_result.text).to include(departure_result)
end

Then(/^I verify that my search result shows flight from "([^"]*)"$/) do |search_result|
  expect(flight_status_screen.flight_search_result.text).to eq (search_result)
end



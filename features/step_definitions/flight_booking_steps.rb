When(/^I click Book a flight button$/) do
  flight_booking_screen.click_book_flight_button
end

Then(/^I click Select a date Departure$/) do
  flight_booking_screen.click_departure_date
end

Then(/^I scroll to "([^"]*)"$/) do |text|
  screen_actions.scroll_to text
  sleep 7
end

And(/^I click on "(\d+)" as a departure date and "(\d+)" as a return date$/) do |departure_date, return_date|
  flight_booking_screen.click_travel_date(departure_date)
  flight_booking_screen.click_travel_date(return_date)
end

Then(/^I click on Select travel date$/) do
  flight_booking_screen.click_select_travel_date
end

And(/^I clisk on Show Basic Economy fares$/) do
  flight_booking_screen.click_basic_fares
end

And(/^I click Sort button$/) do
  sleep 7
  flight_booking_screen.click_sort_button
end

Then(/^I choose sorting "([^"]*)"$/) do |sorting_type|
  sleep 7
  flight_booking_screen.click_sorting_type(sorting_type)
end

And(/^I verify the price sorted from low to high$/) do
  array = []
  for i in flight_booking_screen.price_button
    array.push(i.text.gsub!('$', '').to_i)
  end
  array_sorted = array.sort
  expect(array).to eq(array_sorted)
end

Then(/^I click on the cheapest price$/) do
  sleep 7
  flight_booking_screen.price_button[1].click
end

And(/^I click on Compare link$/) do
  flight_booking_screen.click_compare_link
end

Then(/^I click Select button$/) do
  flight_booking_screen.click_select_button
end

And(/^I confirm Fare Type$/) do
  flight_booking_screen.click_confirm_fare_type
end

And(/^I click Continue as guest$/) do
  flight_booking_screen.click_continue_as_guest
end

Then(/^I verify if Trip info contains airport id's "([^"]*)"$/) do |airport_id|
  expect(flight_booking_screen.airport_ids.text).to include(airport_id)
end


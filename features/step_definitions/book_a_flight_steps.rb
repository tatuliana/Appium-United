Then(/^I click on From button$/) do
  book_a_flight_screen.click_from_button
end

And(/^I click on To button$/) do
  book_a_flight_screen.click_to_button
end

Then(/^I click Select a date Departure$/) do
  book_a_flight_screen.click_departure_date
end

And(/^I clisk on Show Basic Economy fares$/) do
  book_a_flight_screen.click_basic_fares
end

Then(/^I click Search flights button$/) do
  book_a_flight_screen.click_search_flight_button
end

And(/^I click Sort button$/) do
  sleep 7
  book_a_flight_screen.click_sort_button
end

Then(/^I choose sorting "([^"]*)"$/) do |sorting_type|
  sleep 7
  book_a_flight_screen.click_sorting_type(sorting_type)
end

And(/^I verify the price sorted from low to high$/) do
  array = []
  for i in book_a_flight_screen.price_button
    array.push(i.text.gsub!('$', '').to_i)
  end
  array_sorted = array.sort
  expect(array).to eq(array_sorted)
end

Then(/^I click on the cheapest price$/) do
  sleep 7
  book_a_flight_screen.price_button[1].click
end

And(/^I click on Compare link$/) do
  book_a_flight_screen.click_compare_link
end

Then(/^I click Select button$/) do
  book_a_flight_screen.click_select_button
end

And(/^I confirm Fare Type$/) do
  book_a_flight_screen.click_confirm_fare_type
end

And(/^I click Continue as guest$/) do
  book_a_flight_screen.click_continue_as_guest
end

Then(/^I verify if Trip info contains airport id's "([^"]*)"$/) do |airport_id|
  expect(book_a_flight_screen.airport_ids.text).to include(airport_id)
end

And(/^I scroll text "([^"]*)"$/) do |text|
  screen_actions.scroll_to text
  sleep 7
end



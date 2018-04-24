And(/^I click on "(\d+)" as a departure date and "(\d+)" as a return date$/) do |departure_date, return_date|
  select_travel_date_screen.click_travel_date(departure_date)
  select_travel_date_screen.click_travel_date(return_date)
end

Then(/^I click on Select travel date$/) do
  select_travel_date_screen.click_select_travel_date
end
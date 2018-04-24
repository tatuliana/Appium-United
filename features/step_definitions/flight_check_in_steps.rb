Then(/^I click Continue button$/) do
  hide_keyboard
  flight_check_in_screen.click_check_in_continue
end

And(/^the error message "([^"]*)" should be displayed$/) do |error_mess|
  expect(flight_check_in_screen.error_message(error_mess).displayed?).to be == true
end

When(/^I swipe screen to the "([^"]*)" direction$/) do |direction|
  screen_actions.swipe_to_direction(direction)
  sleep 2
end

Then(/^I scroll to "([^"]*)"$/) do |text|
  screen_actions.scroll_to text
  sleep 7
end
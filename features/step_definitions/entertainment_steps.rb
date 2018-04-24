Then(/^"([^"]*)" should be displayed on Entertainment page$/) do |header_text|
  expect(entertainment_screen.entertainment_header.text).to eq(header_text)
end
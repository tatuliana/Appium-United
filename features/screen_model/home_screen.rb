class HomeScreen < ScreenActions

  def home_screen_loaded
    sleep 2
    find_element(name: "Home")
  end

  def click_hor_scroll_view(link_name)
    find_element(name: "#{link_name}").click
    sleep 2
  end

  def card_view_title
    find_element(id: "main_menu_card_default_fragment_card_view_title")
  end

  def click_flight_status
    find_element(id: "main_menu_bottom_section_topleft_button").click
    sleep 1
  end

  def click_welcome_to_united
    find_element(id: "main_menu_mp_title").click
  end

  def click_sign_in_button
    find_element(id: "main_menu_mp_signin_button").click
  end

  def error_message(error_mess)
    find_element(name: "#{error_mess}")
  end

  def click_enterntainment
    find_element(id: "main_menu_bottom_section_topright_button").click
  end

  def enterntainment_header
    find_element(id: "inflight_header")
  end

  def click_check_in
    find_element(id: "main_menu_bottom_section_bottomright_button").click
  end

  def click_check_in_continue
    find_element(id: "checkin_main_btnContinue").click
  end

  def click_menu_item(item)
    find_element(name: "#{item}").click
  end

  def enter_amount(amount)
    amount_field = find_element(id: "editAmount")
    amount_field.click
    amount_field.send_keys amount
  end

  def click_from_currency
    find_element(id: "fromCurrencyItems").click
  end

  def click_letter(letter)
    find_element(name: "#{letter}").click
  end

  def click_currency(currency)
    find_element(name: "#{currency}").click
  end

  def click_to_currency
    find_element(id: "intoCurrencyItems").click
  end

  def click_convert_button
    find_element(id: "submitButton").click
  end

  def currency_result
    find_element(id: "currencyresult_header_label")
  end

  def click_wallet_button
    find_element(id: "action_wallet").click
  end

  def click_add_flight_alert
    menu_items = find_elements(id: "baseLayout")
    menu_items[5].click
  end

  def enter_flight_number(flight_number)
    flight = find_element(id: "flightNumber")
    flight.click
    flight.send_keys flight_number
  end

  def click_departure_airport
    find_element(id: "commonDepartureAirportButton").click
  end

  def enter_departure_airport(airport)
    dep_airport = find_element(id: "AirportSearch_EditText01")
    dep_airport.send_keys airport
    hide_keyboard
  end

  def click_airport_search_result
    find_element(id: "AirportSearch_txtAirportName").click
  end

  def click_date_field
    find_element(id: "common_spinner_item_with_drawable").click
  end

  def click_latest_date
    date = find_elements(id: "text1")
    date[4].click
  end

  def click_search_button
    find_element(id: "searchButton").click
  end

  def flight_result
    find_element(id: "flightInfoBarLine1")
  end

  def departure_result
    find_element(id: "flightInfoBarLine2")
  end

end
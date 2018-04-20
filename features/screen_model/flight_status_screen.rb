class FlightStatusScreen < ScreenActions

  def click_on_widget(widget_name)
    find_element(name: "#{widget_name}").click
    sleep 1
  end

  def click_departure_airport_button
    find_element(id: "commonDepartureAirportButton").click
  end

  def type_departure_airport(airport)
    dep_airport = find_element(id: "AirportSearch_EditText01")
    dep_airport.send_keys airport
    hide_keyboard
  end

  def click_arrival_airport_button
    find_element(id: "commonArrivalAirportButton").click
  end

  def type_arrival_airport(airport)
    arr_airport = find_element(id: "AirportSearch_EditText01")
    arr_airport.send_keys airport
    hide_keyboard
  end

  def click_airport_search_result
    find_element(id: "AirportSearch_txtAirportName").click
  end

  def click_search_button
    find_element(id: "searchButton").click
  end

  def click_first_flight
    flight = find_elements(id: "flightText")
    flight[0].click
  end

  def flight_search_result
    find_element(id: "flightInfoBarLine2")
  end

  def type_flight_number(flight_number)
    flight = find_element(id: "flightNumber")
    flight.send_keys flight_number
  end

end
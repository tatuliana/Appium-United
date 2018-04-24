class SearchForFlightScreen < ScreenActions

  def enter_flight_number(flight_number)
    flight = find_element(id: "flightNumber")
    flight.click
    flight.send_keys flight_number
  end

  def click_departure_airport
    find_element(id: "commonDepartureAirportButton").click
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

  def click_on_tab(tab_name)
    find_element(name: "#{tab_name}").click
    sleep 1
  end

  def click_arrival_airport
    find_element(id: "commonArrivalAirportButton").click
  end

end
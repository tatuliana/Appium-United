class SelectDepartureScreen < ScreenActions

  def enter_departure_airport(airport)
    dep_airport = find_element(id: "AirportSearch_EditText01")
    dep_airport.send_keys airport
    hide_keyboard
  end

  def click_airport_search_result
    find_element(id: "AirportSearch_txtAirportName").click
  end

end
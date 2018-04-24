class SelectSpecificFlightScreen < ScreenActions

  def click_first_flight
    flight = find_elements(id: "flightText")
    flight[0].click
  end

end
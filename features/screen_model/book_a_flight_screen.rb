class BookAFlightScreen < ScreenActions

  def click_from_button
    find_element(id: "commonDepartureAirportButton").click
  end

  def click_to_button
    find_element(id: "commonArrivalAirportButton").click
  end

  def click_departure_date
    find_element(id: "FromDate").click
  end

  def click_basic_fares
    find_element(id: "bookingFS_sc_BEFare").click
  end

  def click_search_flight_button
    find_element(id: "searchButton").click
  end

  def click_sort_button
    find_element(name: "Sort").click
  end

  def click_sorting_type(sorting_type)
    find_element(name: "#{sorting_type}").click
  end

  def price_button
    find_elements(id: "flight_segment_list_view_price")
  end

  def click_compare_link
    find_element(id: "tv_compare").click
  end

  def click_select_button
    find_element(id: "btn_add_product").click
  end

  def click_confirm_fare_type
    fares = find_elements(id: "btn_choose_up_sell")
    while fares.count == 0
      swipe_to_direction("up")
      sleep 2
      fares = find_elements(id: "btn_choose_up_sell")
    end
    fares[0].click
  end

  def click_continue_as_guest
    find_element(id: "tv_continueGuest").click
  end

  def airport_ids
    find_element(id: "tv_date")
  end

end
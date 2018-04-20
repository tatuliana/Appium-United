class FlightBookingScreen < ScreenActions

  def click_book_flight_button
    find_element(id: "main_menu_bottom_section_bottomleft_button").click
  end

  def click_departure_date
    find_element(id: "FromDate").click
  end

  def click_travel_date(date)
    find_element(name: "#{date}").click
  end

  def click_select_travel_date
    find_element(id: "action_mode_close_button").click
  end

  def click_basic_fares
    find_element(id: "bookingFS_sc_BEFare").click
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
    find_element(id: "btn_choose_up_sell").click
  end

  def click_continue_as_guest
    find_element(id: "tv_continueGuest").click
  end

  def airport_ids
    find_element(id: "tv_date")
  end

end
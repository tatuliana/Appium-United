class SelectTravelDateScreen < ScreenActions

  def click_travel_date(date)
    find_element(name: "#{date}").click
  end

  def click_select_travel_date
    find_element(id: "action_mode_close_button").click
  end
end
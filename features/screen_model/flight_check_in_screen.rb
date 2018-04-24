class FlightCheckInScreen < ScreenActions

  def click_check_in_continue
    find_element(id: "checkin_main_btnContinue").click
  end

  def error_message(error_mess)
    find_element(name: "#{error_mess}")
  end

end
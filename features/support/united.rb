class United

  def screen_actions
    @screen_actions ||= ScreenActions.new
  end

  def home_screen
    @home_screen ||= HomeScreen.new
  end

  def flight_status_screen
    @flight_status_screen ||= FlightStatusScreen.new
  end

  def flight_booking_screen
    @flight_booking_screen ||= FlightBookingScreen.new
  end

end
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

  def book_a_flight_screen
    @book_a_flight_screen ||= BookAFlightScreen.new
  end

  def entertainment_screen
    @entertainment_screen ||= EntertainmentScreen.new
  end

  def flight_check_in_screen
    @flight_check_in_screen ||= FlightCheckInScreen.new
  end

  def currency_converter_screen
    @currency_converter_screen ||= CurrencyConverterScreen.new
  end

  def search_for_flight_screen
    @search_for_flight_screen ||= SearchForFlightScreen.new
  end

  def select_departure_screen
    @select_departure_screen ||= SelectDepartureScreen.new
  end

  def select_arrival_screen
    @select_arrival_screen ||= SelectArrivalScreen.new
  end

  def select_specific_flight_screen
    @select_specific_flight_screen ||= SelectSpecificFlightScreen.new
  end

  def select_travel_date_screen
    @select_travel_date_screen ||= SelectTravelDateScreen.new
  end

end
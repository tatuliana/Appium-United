class ScreenActions

  def self.element name, finder
    define_method(name)do
      find_element(finder)
    end
  end

  def swipe_to_direction(direction)
    if direction == "right"
      swipe(:start_x => 0.01, :start_y => 0.5, :offset_x => 0.99, :offset_y => 0.5, :duration => 900)
    elsif direction == "left"
      swipe(:start_x => 0.9, :start_y => 0.5, :offset_x => 0.01, :offset_y => 0.5, :duration => 900)
    elsif direction == "up"
      swipe(:start_x => 0.5, :start_y => 0.99, :offset_x => 0.5, :offset_y => 0.2, :duration => 900)
    elsif direction == "down"
      swipe(:start_x => 0.5, :start_y => 0.2, :offset_x => 0.5, :offset_y => 0.9, :duration => 900)
    elsif direction == "up_for_15"
      swipe(:start_x => 0.5, :start_y => 0.9, :offset_x => 0.5, :offset_y => 0.75, :duration => 900)
    elsif direction == "down_for_15"
      swipe(:start_x => 0.5, :start_y => 0.2, :offset_x => 0.5, :offset_y => 0.35, :duration => 900)
    end
  end

  #method accept arguments: 'on' 'off'
  def turn_airplane_mode value
    toggle_airplane_mode if value == "on"
    set_network_connection(6) if value == "off"
  end

  def scroll_to text
    scroll_to_exact text
  end

  def tap_on_first_element text
    find_elements(:name, text).first.click
  end

  def android_menu
    # system "adb shell input keyevent 82"
    press_keycode "82"
  end

  def android_menu_button
    find_elements(:id, "title")
  end

end
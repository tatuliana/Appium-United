class HomeScreen < ScreenActions

  def home_screen_loaded
    sleep 2
    find_element(name: "Home")
  end

  def click_hor_scroll_view(link_name)
    find_element(name: "#{link_name}").click
    sleep 2
  end

  def card_view_title
    find_element(id: "main_menu_card_default_fragment_card_view_title")
  end

  def click_flight_status
    find_element(id: "main_menu_bottom_section_topleft_button").click
    sleep 1
  end

  def click_welcome_to_united
    find_element(id: "main_menu_mp_title").click
  end

  def click_sign_in_button
    find_element(id: "main_menu_mp_signin_button").click
  end

  def click_entertainment
    find_element(id: "main_menu_bottom_section_topright_button").click
  end

  def entertainment_header
    find_element(id: "inflight_header")
  end

  def click_book_flight_button
    find_element(id: "main_menu_bottom_section_bottomleft_button").click
  end

  def click_check_in
    find_element(id: "main_menu_bottom_section_bottomright_button").click
  end

  def click_menu_item(item)
    find_element(name: "#{item}").click
  end


  def find_click_menu_item(item)
    menu_items = find_elements(name: "#{item}")
    while menu_items.count == 0
      swipe_to_direction("up")
      sleep 2
      menu_items = find_elements(name: "#{item}")
    end
    menu_items[0].click
  end

  def click_wallet_button
    find_element(id: "action_wallet").click
  end

  def click_add_flight_alert
    menu_items = find_elements(id: "baseLayout")
    menu_items[5].click
  end

end
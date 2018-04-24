class CurrencyConverterScreen < ScreenActions

  def enter_amount(amount)
    amount_field = find_element(id: "editAmount")
    amount_field.click
    amount_field.send_keys amount
  end

  def click_from_currency
    find_element(id: "fromCurrencyItems").click
  end

  def click_letter(letter)
    find_element(name: "#{letter}").click
  end

  def click_currency(currency)
    find_element(name: "#{currency}").click
  end

  def click_to_currency
    find_element(id: "intoCurrencyItems").click
  end

  def click_convert_button
    find_element(id: "submitButton").click
  end

  def currency_result
    find_element(id: "currencyresult_header_label")
  end

end
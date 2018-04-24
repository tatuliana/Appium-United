@acceptance @booking
Feature: Book a flight feature

  Scenario: Looking for the cheapest trip from SF to LA
    Given I land on the home screen and verify Home link is displayed
    When I click Book a flight button
    Then I click on From button
    And I enter "San Francisco" as a departure airport
    Then I click on departure airport search result
    And I click on To button
    Then I enter "Los Angeles" as an arrival airport
    And I click on arrival airport search result
    Then I click Select a date Departure
    Then I swipe screen to the "up_for_15" direction
    And I click on "1" as a departure date and "3" as a return date
    Then I click on Select travel date
    And I clisk on Show Basic Economy fares
    Then I click Search flights button
#    departure choice
    And I click Sort button
    Then I choose sorting "Price (low to high)"
    And I verify the price sorted from low to high
    Then I click on the cheapest price
    And I click on Compare link
    Then I click Select button
    And I confirm Fare Type
#    return choice
    And I click Sort button
    Then I choose sorting "Price (low to high)"
    And I verify the price sorted from low to high
    Then I click on the cheapest price
    And I click on Compare link
    Then I click Select button
#    And I confirm Fare Type
    And I click Continue as guest
    Then I verify if Trip info contains airport id's "SFO - LAX"


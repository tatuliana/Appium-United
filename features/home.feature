@acceptance @home
Feature: Homescreen feature

  Scenario Outline: Checking navigation in Horizontal Scroll View
    Given I land on the home screen and verify Home link is displayed
    When I click on "<link_name>" in Horizontal Scroll View
    Then I verify that card title text is equal to "<text>"

    Examples:
    | link_name       | text               |
    | Boarding Passes | No boarding passes |
    | Flight Status   | No active flights  |

  Scenario: User shouldn't be able to sign in without entering his data to login and password fields
    Given I land on the home screen and verify Home link is displayed
    When I click on Welcome to United section
    Then I click Sign in button
    And the error message "Account number and password are required." should be displayed

  Scenario: User should be able to open Entertainment section
    Given I land on the home screen and verify Home link is displayed
    When I click on Entertainment section
    Then "Personal device entertainment" should be displayed on Entertainment page

  Scenario: User shouldn't be able to check in without entering his data to confirmation and last name fields
    Given I land on the home screen and verify Home link is displayed
    When I click on Check in
    Then I click Continue button
    And the error message "Please enter a confirmation or ticket number and last name." should be displayed

  Scenario: Using left to right swipe I open left menu and check functionality of currency converter
    Given I land on the home screen and verify Home link is displayed
    When I swipe screen to the "right" direction
    And I look for menu item "Currency converter", swipe to find it if necessary and then click
    Then I enter "100000" as amount I want to exchange
    Then I click currency to exchange from
    And I click on letter "R"
    Then I click on currency "Russian Ruble (RUB)"
    Then I click currency to exchange to
    And I click on letter "U"
    Then I swipe screen to the "down_for_15" direction
    And I click on currency "US Dollars (USD)"
    Then I click Convert button
    And I verify "Currency results" is displayed

  Scenario: Using right to left swipe I open write menu and add a flight alert
    Given I land on the home screen and verify Home link is displayed
    When I click on wallet button
    Then I click on Add a flight alert
    And I enter flight number "261"
    And I click on Select departure airport
    Then I enter "San Francisco" as a departure airport
    Then I click on departure airport search result
    And I click on date
    Then I click on the latest possible date
    Then I click Search button to find flight
    And I verify search results include flight number "261" and departure airport "San Francisco"








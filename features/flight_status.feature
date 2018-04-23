@acceptance @flight
Feature: Flight status feature

  Scenario: Checking Flight Status By City
    Given I land on the home screen and verify Home link is displayed
    When I click Flight status button
    Then I click on widget "By City"
    When I type "San Francisco" in Select departure airport field
    And click on flight search result
    Then I type "Los Angeles" in Select arrival airport field
    And click on flight search result
    Then I click Search button
    When I click on first result
    Then I verify that my search result shows flight from "San Francisco to Los Angeles"

  Scenario: Checking Flight Status By Number
    Given I land on the home screen and verify Home link is displayed
    When I click Flight status button
    And I type "222" flight number
    Then I type "San Francisco" in Select departure airport field
    And click on flight search result
    Then I click Search button
    Then I verify that my search result shows flight from "San Francisco to Los Angeles"



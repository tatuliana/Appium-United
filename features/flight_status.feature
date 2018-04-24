@acceptance @flight
Feature: Flight status feature

  Scenario: Checking Flight Status By City
    Given I land on the home screen and verify Home link is displayed
    When I click Flight status button
    Then I click on tab "By City"
    And I click on Select departure airport
    Then I enter "San Francisco" as a departure airport
    And I click on departure airport search result
    Then I click on Select arrival airport
    And I enter "Los Angeles" as an arrival airport
    And I click on arrival airport search result
    Then I click Search button to find flight
    When I click on first result
    Then I verify that my search result shows flight from "San Francisco to Los Angeles"

  Scenario: Checking Flight Status By Number
    Given I land on the home screen and verify Home link is displayed
    When I click Flight status button
    And I enter flight number "222"
    And I click on Select departure airport
    Then I enter "San Francisco" as a departure airport
    And I click on departure airport search result
    Then I click Search button to find flight
    Then I verify that my search result shows flight from "San Francisco to Los Angeles"



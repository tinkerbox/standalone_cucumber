Feature: Find the YCH Website

  Scenario: Search for the website
    Given I am on the Google homepage
    Then I will search for "ych.com"
    Then I should see "YCH"
    Then I will click the about link
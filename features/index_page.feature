Feature: Index page

  Scenario: Viewing application's index page
    Given there is a product named "Digital Fortress" with "The best book" description
    When I am on the indexpage
    Then I should see the "Digital Fortress" product
Feature: New page

  As a Seller
  I want to add a new product to the site
  So that I can sell my product to people

  Scenario: successful submission
    Given I'm on the newpage

    When I add a new product

    Then I should see the page for my newly created product
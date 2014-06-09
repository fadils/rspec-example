Feature: Show page

  As a Visitor
  I want to see the product details
  So that I get more information about the product

  Scenario: product exist
	  Given I want to click an existing product named "Bourne" with description "Best Book"

	  When I click product link on index page

	  Then I should see the page showing product details
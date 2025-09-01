Feature: Add product to basket
  User can review and manage items they want to buy.

  Background:
    Given the user is signed in

  Scenario: User adds a product with a chosen quantity and reviews the basket
    Given the user is browsing products
    When the user adds the product "Pliers" with quantity 3 to the basket
    And the user opens the basket
    Then the basket indicator shows an item count of 3
    And the basket lists "Pliers" with quantity 3
    And the unit price for "Pliers" is displayed
    And the the total price is equal 3 times the unit price of "Pliers"
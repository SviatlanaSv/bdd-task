Feature: Favorite products
  Users can save and manage products they like.

  Background:
    Given the user is signed in

  Scenario: User adds a product to their favorites and sees it in the list
    Given the user's favorites list is empty
    And the user is browsing products in catalogue
    When the user marks the product "Bolt Cutters" as a favorite
    And the user opens the favorites page
    Then the favorites list includes "Bolt Cutters"

  Scenario: User removes a product from favorites
    Given the product "Bolt Cutters" is in the user's favorites
    When the user removes "Bolt Cutters" from favorites
    Then the favorites list does not include "Bolt Cutters"
    
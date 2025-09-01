Feature: Product search by name
  User can find products whose names include a given term.

  Scenario: Searching by a name fragment returns matching products
    Given products are available in the catalogue
    And the user is browsing the product catalogue
    When the user searches for products by name using the term "pliers"
    Then search results are displayed
    And every result name includes the term "pliers"
    And no product is shown whose name does not include the term "pliers"
Feature: Sort and filter products on the main page

  Scenario: User sorts products by price from low to high
    Given products are visible on the main page
    When the user sorts the products by price from low to high
    Then the products are ordered by ascending price
    And each subsequent product's price is greater than or equal to the previous one

  Scenario: User filters products by category and brand
    Given the user is viewing the product catalogue on the main page
    When the user chooses only products in the category "Pliers"
    And the user filters results by brand "ForgeFlex Tools"
    Then only products from the category "Pliers" are displayed
    And only products from the brand "ForgeFlex Tools" are displayed

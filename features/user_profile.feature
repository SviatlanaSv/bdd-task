Feature: User profile data update
  Signed-in user can update their profile information

  Background:
    Given the user is signed in

  Scenario Outline: User updates address 
    Given the user is on the profile page
    When the user updates their address with:
      | street      | <street>      |
      | postal_code | <postal_code> |
      | city        | <city>        |
      | country     | <country>     |
    And the user saves the profile
    Then the profile shows the updated address
    And the changes persist for subsequent visits

  Examples:
    | street                 | postal_code  | city           | country       |
    | Laisves pr.32          | LT-02162     | Vilnius        | Lithuania     |
    | ul. Warszawska, 27     | 15-001       | Bialystok      | Poland        |
    | Sauletoji g.7          | LT-01117     | Salcininkai    | Lithuania     |


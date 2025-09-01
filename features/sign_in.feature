Feature: Sign in with Google account

  Background:
    Given a customer has a valid Google account linked to their profile
    And the customer is not signed in to the application

  Scenario: Successful sign-in via Google account 
    When the customer chooses to sign in with their Google account
    And the customer approves Google authorization
    Then the customer is returned to the application as an authenticated user
    And the header displays the signed-in customer 
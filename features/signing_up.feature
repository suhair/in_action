Feature: Signing Up
  Scenario: Signing up for a user
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@ticketee.com" 
    And I fill in "Password" with "password"
    And I fill in "Password confirm" with "password"
    And I press "Sign up"
    Then I should see "You have signed up successfully."

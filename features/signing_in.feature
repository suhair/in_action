Feature: Signing in feature
  Scenario: Signing in a user
    Given there are the following users:
      |email                            |password  |unconfirmed|
      |user@ticketee.com                |password  |true       |
    And "user@ticketee.com" opens the email with subject "confirmation instructions"

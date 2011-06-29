Feature: Signing in feature
  Scenario: Signing in a user
    Given there are the following users:
      |email                            |password  |unconfirmed|
      |user@ticketee.com                |password  |true       |
    And "user@ticketee.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    Then I should see "Signed in as user@ticketee.com"

Feature: creating users
  Scenario: Creating A user
    Given there are the following users:
      |email                |password     |admin    |
      |admin@ticketee.com   |password     |true     |
    And I am signed in as them
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    When I follow "New User"
    And I fill in "Email" with "newbie@ticketee.com"
    And I fill in "Password" with "password"
    And I press "Create User"
    Then I should see "User has been created."

  Scenario:Leaving email blank is not valid
    Given there are the following users:
      |email                |password     |admin    |
      |admin@ticketee.com   |password     |true     |
    And I am signed in as them
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    When I follow "New User"
    And I fill in "Email" with ""
    And I fill in "Password" with "password"
    And I press "Create User"
    Then I should see "User has not been created."

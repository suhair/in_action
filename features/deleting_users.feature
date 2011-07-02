Feature: Deleting users

  Background:
    Given there are the following users:
      |email                |password     |admin  |
      |admin@ticketee.com   |password     |true   |
      |user@ticketee.com    |password     |false  |

    And I am signed in as "admin@ticketee.com"
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"


  Scenario: Deleting a User
    And I follow "user@ticketee.com"
    When I follow "Delete User"
    Then I should see "User has been deleted."

  Scenario: A user cannot delete himself
    And I follow "admin@ticketee.com"
    When I follow "Delete User"
    Then I should see "You cannot delete yourself."

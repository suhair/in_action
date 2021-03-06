Feature: Editing Users

  Background:
    Given there are the following users:
      |email                |password           |admin  |
      |admin@ticketee.com   |password           |true  |
    And I am signed in as them
    Given there are the following users:
      |email                |password                   |
      |user@ticketee.com    |password                   |
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    And I follow "user@ticketee.com"
    And I follow "Edit User"

  Scenario: Editing a user
    When I fill in "Email" with "newguy@ticketee.com"
    And I press "Update User"
    And I should see "User has been updated."
    And I should see "newguy@ticketee.com"
    And I should not see "user@ticketee.com"


  Scenario: Toglling a user's admin ability
    When I check "Is an admin?"
    And I press "Update User"
    Then I should see "User has been updated."
    And I should see "user@ticketee.com (admin)"


  Scenario: Updating with an invalid email fails
    When I fill in "Email" with "fakeeamil"
    And I press "Update User"
    Then I should see "User has not been updated."
    And I should see "Email is invalid"

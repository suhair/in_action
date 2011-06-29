Feature: Deleting projects
  Background:
    Given there are the following users:
      |email                |password   |admin  |
      |user@ticketee.com    |password   |true   |
    And I am signed in as them

  Scenario: Deleting a project
    Given there is a project called "Textmate 2"
    And I am on the homepage
    When I follow "Textmate 2"
    And I follow "Delete"
    Then I should see "Project has been deleted."
    Then I should not see "Textmate 2"

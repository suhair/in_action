Feature: creating projects
  Scenario: creating a project
    Given I am on the homepage
    When I follow "New Project"
    And I fill in "Name" with "Textmate 2"
    And I press "Create Project"
    Then I should see "The project has been created."
    And I should be on the project page for "Textmate 2"
    And I should see "Textmate 2 - Projects - Ticketee"

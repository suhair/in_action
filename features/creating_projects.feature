Feature: creating projects
  Background:
    Given I am on the homepage
    When I follow "New Project"

  Scenario: creating a project
    And I fill in "Name" with "Textmate 2"
    And I press "Create Project"
    Then I should see "The project has been created."
    And I should be on the project page for "Textmate 2"
    And I should see "Textmate 2 - Projects - Ticketee"

  Scenario: creating project without a name
    And I press "Create Project"
    And I should see "Project has not been created."
    And I should see "Name can't be blank"

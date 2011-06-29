Feature: Editing Projects
  Background:
    Given there is a project called "Textmate 2"
    And I am on the homepage
    When I follow "Textmate 2"
    And I follow "Edit"

  Scenario: Updating a project
    And I fill in "Name" with "Textmate 2 beta"
      And I press "Update Project"
      Then I should see "Project has been updated."
      Then I should be on the project page for "Textmate 2 beta"

  Scenario: Updating a project with invalid attributes
    And I fill in "Name" with ""
    And I press "Update Project"
    Then I should see "Project has not been updated."

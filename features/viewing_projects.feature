Feature: Viewing projects
  Scenario: Listing all projects
    Given there is a project called "Textmate 2"
    And I am on the homepage
    When I follow "Textmate 2"
    Then I should be on the project page for "Textmate 2"

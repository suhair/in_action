Feature: Hidden Links
  Background:
    Given there are the following users:
      |email              |password       |admin  |
      |user@ticketee.com  |password       |false  |
      |admin@ticketee.com |password       |true   |
    And there is a project called "Textmate 2"

  Scenario: New project link is hidden for non-signed in users
    Given I am on the homepage
    Then I should not see the "New Project" link

  Scenario: New project link is hidden for non-admin users
    Given I am signed in as "user@ticketee.com"
    Then I should not see the "New Project" link

  Scenario: New project link is not hidden for admin users
    Given I am signed in as "admin@ticketee.com"
    Then I should see the "New Project" link

  Scenario: Edit Project link is hidden for non-signed in users
    Given I am on the homepage
    And I follow "Textmate 2"
    Then I should not see the "Edit Project" link
  Scenario: Edit Project link is hidden for non-admin users
    Given I am signed in as "user@ticketee.com"
    And I follow "Textmate 2"
    Then I should not see the "Edit Project" link
  Scenario: Edit Project link is visible for admin users
    Given I am signed in as "admin@ticketee.com"
    And I follow "Textmate 2"
    Then I should see the "Edit Project" link
  Scenario: Delete project link is hidden for non-signed in users
    Given I am on the homepage
    And I follow "Textmate 2"
    Then I should not see the "Delete Project" link
  Scenario: Delete Project link is hidden for non-admin users
    Given I am signed in as "user@ticketee.com"
    And I follow "Textmate 2"
    Then I should not see the "Delete Project" link
  Scenario: Delete Project link is visible for admin users
    Given I am signed in as "admin@ticketee.com"
    And I follow "Textmate 2"
    Then I should see the "Delete Project" link

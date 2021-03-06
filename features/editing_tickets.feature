Feature: Editing Tickets
  Background:
    Given there are the following users:
      |email                    |password |
      |user@ticketee.com        |password |
    And I am signed in as them
    Given there is a project called "Textmate 2"
    And "user@ticketee.com" can view the "Textmate 2" project
    And "user@ticketee.com" has created a ticket for this project:
      |title                        |description                              |
      |Make it shiny!               |Gradients! Starbursts! Oh My!            |
    Given I am on the homepage
    When I follow "Textmate 2"
    And I follow "Make it shiny!"
    When I follow "Edit Ticket" 
  
  Scenario: Editing A Ticket
    When I fill in "Title" with "Make it really shiny!"
    And I press "Update Ticket"
    Then I should see "Ticket has been updated."
    And I should see "Make it really shiny!" within "#ticket h2"
    But I should not see "Make it shiny!"

  Scenario: Updating a Ticket with incorrect information
    When I fill in "Title" with ""
    And I press "Update Ticket"
    Then I should see "Ticket has not been updated."

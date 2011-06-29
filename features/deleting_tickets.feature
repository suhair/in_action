Feature: Deleting Tickets

  Scenario: Deleting a ticket
    Given there are the following users:
      |email                    |password |
      |user@ticketee.com        |password |
    And I am signed in as them
    Given there is a project called "Textmate 2"
    And "user@ticketee.com" has created a ticket for this project:
      |title                        |description                              |
      |Make it shiny!               |Gradients! Starbursts! Oh My!            |
    Given I am on the homepage
    When I follow "Textmate 2"
    And I follow "Make it shiny!"
    When I follow "Delete Ticket"
    And I should see "The ticket has been deleted."
    And I should be on the project page for "Textmate 2"

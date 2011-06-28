Feature: Deleting Tickets

  Scenario: Deleting a ticket
    Given there is a project called "Textmate 2"
    And that project has a ticket:
      |title                          |description                            |
      |Make it shiny!                 |Gradients! Starbursts! Oh My!          |
    Given I am on the homepage
    When I follow "Textmate 2"
    And I follow "Make it shiny!"
    When I follow "Delete Ticket"
    And I should see "The ticket has been deleted."
    And I should be on the project page for "Textmate 2"

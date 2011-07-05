Feature: Viewing Tickets
  Scenario: viewing tickets for a given project
    Given there are the following users:
      |email                    |password       |
      |user@ticketee.com        |password       |
    And I am signed in as them
    And there is a project called "Textmate 2"
    And "user@ticketee.com" can view the "Textmate 2" project
    And "user@ticketee.com" has created a ticket for this project:
      |title                        |description                            |
      |Make it shiny                |Gradients! Starbursts! Oh My!          |
    And there is a project called "Internet Explorer"
    And "user@ticketee.com" can view the "Internet Explorer" project
    And "user@ticketee.com" has created a ticket for this project:
      |title                        |description                            |
      |Standards compliance         |Isn't a joke.                          |
    Given I am on the homepage
    When I follow "Textmate 2"
    Then I should see "Make it shiny"
    And I should not see "Standards compliance"
    When I follow "Make it shiny"
    Then I should be on the "Make it shiny" ticket in the "Textmate 2" project
    And I should see "Gradients! Starbursts! Oh My!"
    When I follow "Ticketee"
    And I follow "Internet Explorer"
    Then I should see "Standards compliance"
    And I should not see "Make it shiny"
    When I follow "Standards compliance"
    Then I should be on the "Standards compliance" ticket in the "Internet Explorer" project
    And I should see "Isn't a joke."
    

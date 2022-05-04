Feature: The user can add personal comments or notes to a certain book they are reading.

Scenario: Adding a comment
    Given The user is on the home page
    When I click on "Add Book"
    Then I should be on the new book page
    And I should see a comment label
    And I should see comment book comment field

Scenario: Editing a comment
    Given User is back on the home page
    When I click on "Edit Book"
    Then I should be on the edit book page
    And I should see a comment label
    And I should see comment book field
Feature: The user can add personal comments or notes to a certain book they are reading.

Scenario: Adding a comment
    Given The user is on the root page
    And The user can see their list of books
    When The user clicks on the book
    And The user clicks on "Add Comment/Notes"
    Then The user can apply some description to the book

Scenario: Editing an existing comment
    Given The user is viewing their list of books
    And A book in the list is populated with some comment
    When The user clicks on the "comment_field"
    Then The "comment_field" should open access for writing privileges
    And The "comment_field" should update the comment with the new description

Scenario: Removing a comment
    Given The user is viewing their list of books
    And a book in the list is populated with some comment
    When The user clicks on the "comment_field"
    And The user clicks on the "Remove comment" button
    Then the comment should be removed from the book 